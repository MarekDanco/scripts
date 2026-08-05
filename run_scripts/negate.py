#!/usr/bin/env python3
# Usage: negate.py <input.smt2> <output.smt2>
# Writes an SMT2 file asserting the negation of the conjunction of all
# assertions in the input file.
import sys

import z3


def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <input.smt2> <output.smt2>", file=sys.stderr)
        sys.exit(1)
    in_path, out_path = sys.argv[1], sys.argv[2]

    assertions = z3.parse_smt2_file(in_path)
    formula = z3.And(*assertions) if len(assertions) > 1 else assertions[0]

    solver = z3.Solver()
    solver.add(z3.Not(formula))

    set_logic = None
    with open(in_path) as f:
        for line in f:
            if line.strip().startswith("(set-logic"):
                set_logic = line.strip()
                break

    with open(out_path, "w") as f:
        if set_logic:
            f.write(set_logic + "\n")
        f.write(solver.to_smt2())


if __name__ == "__main__":
    main()
