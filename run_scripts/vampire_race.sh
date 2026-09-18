#!/bin/bash
#
# File:  vampire_race.sh
#
# Races vampire on a formula against vampire on the formula's negation
# (built via z3py, see negate.py). Whichever side vampire refutes first
# determines the answer to the original problem:
#   original refuted  -> unsat      original satisfiable -> sat
#   negation refuted   -> sat        negation satisfiable -> unsat
#
if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <solver_dir> <instance> [options...]" >&2
    exit 100
fi

solver_dir="$1"
instance="$2"
shift 2
opts=("$@")

base_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
run_bin="${base_dir}/${solver_dir}/run"

work_dir=$(mktemp -d "${TMPDIR:-/tmp}/vampire_race.XXXXXX")
neg_instance="${work_dir}/neg.smt2"
orig_out="${work_dir}/orig.out"
neg_out="${work_dir}/neg.out"

orig_pid=""
neg_pid=""

# Vampire does not reliably react to SIGTERM in time (e.g. while still
# preprocessing), so runsolver would wait its full grace period (-d) before
# SIGKILLing it, overshooting the limit. Kill the vampire groups outright.
cleanup() {
    [ -n "${orig_pid}" ] && kill -KILL -- -"${orig_pid}" 2>/dev/null
    [ -n "${neg_pid}" ] && kill -KILL -- -"${neg_pid}" 2>/dev/null
    rm -rf "${work_dir}"
}
trap cleanup EXIT
trap 'exit 143' TERM INT

if ! python3 "${base_dir}/negate.py" "${instance}" "${neg_instance}" 2>"${work_dir}/negate.err"; then
    echo "unknown"
    cat "${work_dir}/negate.err" >&2
    exit 0
fi

setsid "${run_bin}" "${opts[@]}" "${instance}" >"${orig_out}" 2>"${work_dir}/orig.err" &
orig_pid=$!

setsid "${run_bin}" "${opts[@]}" "${neg_instance}" >"${neg_out}" 2>"${work_dir}/neg.err" &
neg_pid=$!

# Prints the first sat/unsat answer vampire wrote to the given file, if any.
answer_of() {
    grep -m1 -o -x -E '(sat|unsat)' "$1" 2>/dev/null
}

result=""
from_neg=""
while true; do
    # Check liveness before reading outputs so an answer written right
    # before both processes exit is not missed.
    all_done=""
    if ! kill -0 "${orig_pid}" 2>/dev/null && ! kill -0 "${neg_pid}" 2>/dev/null; then
        all_done=1
    fi
    case "$(answer_of "${orig_out}")" in
        unsat) result="unsat"; break ;;
        sat)   result="sat"; break ;;
    esac
    case "$(answer_of "${neg_out}")" in
        unsat) result="sat"; from_neg=1; break ;;
        sat)   result="unsat"; from_neg=1; break ;;
    esac
    [ -n "${all_done}" ] && break
    sleep 0.3
done

if [ -n "${result}" ]; then
    echo "${result}"
    if [ -n "${from_neg}" ]; then
        # The negation's answer is the opposite of ours; comment its output
        # out so is_ok.sh does not pick up its sat/unsat line.
        sed -e 's/^/% neg: /' "${neg_out}"
    else
        cat "${orig_out}"
    fi
else
    cat "${orig_out}"
fi
