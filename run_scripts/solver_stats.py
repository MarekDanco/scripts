#!/usr/bin/env python3
"""
Aggregate SMT solver benchmark stats across all families.
Usage: solver_stats.py <tables-dir>

Two layouts are accepted:
  Nested: tables-dir/<family>/<solver>.tab
  Flat:   tables-dir/<solver>.tab   (family extracted from problem path)

Line format: path ; time1 time2 (s) m:MEM ; result ...<br>its:N ...
  result: 'n' = not solved, 's sat' = solved sat, 's unsat' = solved unsat
  its:N  = iteration count (may be absent)
"""

import re
import sys
from collections import defaultdict
from pathlib import Path
from typing import Sequence

RE_ITS = re.compile(r'\bits:(\d+)')


def parse_line(line: str):
    """Return (problem_path, time_s, result, its) or None.
    result: 'sat' | 'unsat' | 'timeout'.  its: int | None."""
    line = line.strip()
    if not line:
        return None
    parts = line.split(';')
    if len(parts) < 3:
        return None

    problem_path = parts[0].strip()

    time = None
    for tok in parts[1].split():
        try:
            time = float(tok)
            break
        except ValueError:
            pass

    result_col = parts[2].strip()
    tokens = result_col.split()
    if not tokens:
        return None

    result = None
    if tokens[0] == 'n':
        result = 'timeout'
    elif tokens[0] == 's' and len(tokens) >= 2:
        if tokens[1] == 'sat':
            result = 'sat'
        elif tokens[1] == 'unsat':
            result = 'unsat'

    if result is None:
        return None

    m = RE_ITS.search(result_col)
    its = int(m.group(1)) if m else None

    return problem_path, time, result, its


def family_from_path(problem_path: str) -> str:
    return Path(problem_path).parent.name


def new_stats():
    return {'sat': 0, 'unsat': 0, 'timeout': 0, 'total': 0,
            'time': 0.0, 'its_sum': 0, 'its_n': 0}


def collect(tabs: Sequence[tuple[str, str | None, Path]],
            stats, fstats, solved_by):
    for solver, fixed_family, tab in tabs:
        with open(tab, encoding='utf-8', errors='replace') as f:
            for line in f:
                parsed = parse_line(line)
                if parsed is None:
                    continue
                problem_path, t, result, its = parsed
                family = fixed_family if fixed_family else family_from_path(problem_path)
                s = stats[solver]
                s['total'] += 1
                if t is not None:
                    s['time'] += t
                s[result] += 1
                if its is not None:
                    s['its_sum'] += its
                    s['its_n'] += 1
                fs = fstats[family][solver]
                fs['total'] += 1
                fs[result] += 1
                if its is not None:
                    fs['its_sum'] += its
                    fs['its_n'] += 1
                if result in ('sat', 'unsat'):
                    solved_by[solver].add((family, problem_path))


def avg_its_str(s) -> str:
    return f"{s['its_sum'] / s['its_n']:>8.1f}" if s['its_n'] else f"{'n/a':>8}"


def print_solver_table(solvers, stats, col):
    hdr = (f"{'Solver':<{col}}  {'Total':>7}  {'Sat':>7}  {'Unsat':>7}"
           f"  {'Solved':>7}  {'Timeout':>8}  {'%Solved':>8}  {'AvgTime':>9}  {'AvgIts':>8}")
    print(hdr)
    print('-' * len(hdr))
    for solver in solvers:
        s = stats[solver]
        total   = s['total']
        solved  = s['sat'] + s['unsat']
        pct     = 100 * solved / total if total else 0.0
        avg_t   = s['time'] / total if total else 0.0
        print(f"{solver:<{col}}  {total:>7}  {s['sat']:>7}  {s['unsat']:>7}"
              f"  {solved:>7}  {s['timeout']:>8}  {pct:>7.1f}%  {avg_t:>8.1f}s"
              f"  {avg_its_str(s)}")


def print_family_table(family_solvers, fs, col):
    hdr = (f"  {'Solver':<{col}}  {'Total':>7}  {'Sat':>7}  {'Unsat':>7}"
           f"  {'Solved':>7}  {'%Solved':>8}  {'AvgIts':>8}")
    print(hdr)
    print('  ' + '-' * (len(hdr) - 2))
    for solver in family_solvers:
        s = fs[solver]
        total  = s['total']
        solved = s['sat'] + s['unsat']
        pct    = 100 * solved / total if total else 0.0
        print(f"  {solver:<{col}}  {total:>7}  {s['sat']:>7}  {s['unsat']:>7}"
              f"  {solved:>7}  {pct:>7.1f}%  {avg_its_str(s)}")


def main():
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <tables-dir>", file=sys.stderr)
        sys.exit(1)
    root = Path(sys.argv[1])
    if not root.is_dir():
        print(f"Directory not found: {root}", file=sys.stderr)
        sys.exit(1)

    direct_tabs = sorted(root.glob("*.tab"))
    family_dirs = sorted(p for p in root.iterdir() if p.is_dir())

    if direct_tabs:
        print(f"Flat layout: {len(direct_tabs)} solver files", file=sys.stderr)
        tabs: Sequence[tuple[str, str | None, Path]] = [
            (tab.stem, None, tab) for tab in direct_tabs
        ]
    elif family_dirs:
        print(f"Nested layout: {len(family_dirs)} families", file=sys.stderr)
        tabs = [
            (tab.stem, fdir.name, tab)
            for fdir in family_dirs
            for tab in sorted(fdir.glob("*.tab"))
        ]
    else:
        print("No .tab files found.", file=sys.stderr)
        sys.exit(1)

    stats    = defaultdict(new_stats)
    fstats   = defaultdict(lambda: defaultdict(new_stats))
    solved_by: dict[str, set] = defaultdict(set)

    collect(tabs, stats, fstats, solved_by)

    if not stats:
        print("No data found.", file=sys.stderr)
        sys.exit(1)

    solvers = sorted(stats.keys(), key=lambda s: -(stats[s]['sat'] + stats[s]['unsat']))
    col = max(len(s) for s in solvers)
    total_problems = stats[solvers[0]]['total'] if solvers else 0

    print_solver_table(solvers, stats, col)

    # Greedy cover
    print()
    print("Greedy sequential portfolio:")
    hdr2 = f"  {'#':>2}  {'Solver':<{col}}  {'New':>7}  {'Cumul':>7}  {'%Cumul':>8}"
    print(hdr2)
    print('  ' + '-' * (len(hdr2) - 2))
    covered: set = set()
    remaining = set(solvers)
    rank = 0
    while remaining:
        best = max(remaining, key=lambda s: len(solved_by[s] - covered))
        new = solved_by[best] - covered
        if not new:
            break
        covered |= new
        remaining.remove(best)
        rank += 1
        pct = 100 * len(covered) / total_problems if total_problems else 0.0
        print(f"  {rank:>2}  {best:<{col}}  {len(new):>7}  {len(covered):>7}  {pct:>7.1f}%")

    # Per-family breakdown
    for family in sorted(fstats):
        fs = fstats[family]
        family_solvers = sorted(fs.keys(), key=lambda s: -(fs[s]['sat'] + fs[s]['unsat']))
        print()
        print(f"Family: {family}")
        print_family_table(family_solvers, fs, col)


if __name__ == '__main__':
    main()
