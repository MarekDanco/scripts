#!/bin/bash
#
# File:  vampire_race.sh
#
# Races vampire on a formula against vampire on the formula's negation
# (built via z3py, see negate.py). Whichever side vampire refutes first
# determines the answer to the original problem:
#   original refuted  -> unsat
#   negation refuted   -> sat
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

cleanup() {
    [ -n "${orig_pid}" ] && kill -- -"${orig_pid}" 2>/dev/null
    [ -n "${neg_pid}" ] && kill -- -"${neg_pid}" 2>/dev/null
    rm -rf "${work_dir}"
}
trap cleanup EXIT TERM INT

if ! python3 "${base_dir}/negate.py" "${instance}" "${neg_instance}" 2>"${work_dir}/negate.err"; then
    echo "unknown"
    cat "${work_dir}/negate.err" >&2
    exit 0
fi

setsid "${run_bin}" "${opts[@]}" "${instance}" >"${orig_out}" 2>"${work_dir}/orig.err" &
orig_pid=$!

setsid "${run_bin}" "${opts[@]}" "${neg_instance}" >"${neg_out}" 2>"${work_dir}/neg.err" &
neg_pid=$!

result=""
while true; do
    if grep -q -w '^unsat' "${orig_out}" 2>/dev/null; then
        result="unsat"
        break
    fi
    if grep -q -w '^unsat' "${neg_out}" 2>/dev/null; then
        result="sat"
        break
    fi
    if ! kill -0 "${orig_pid}" 2>/dev/null && ! kill -0 "${neg_pid}" 2>/dev/null; then
        break
    fi
    sleep 0.3
done

if [ -n "${result}" ]; then
    echo "${result}"
    if [ "${result}" = "unsat" ]; then
        cat "${orig_out}"
    else
        cat "${neg_out}"
    fi
else
    cat "${orig_out}"
fi
