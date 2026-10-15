#!/bin/bash
#
# Show how long run_all.sh has been running, how many instances are finished
# and solved (read from the logs), and estimate how long the run has left.
# Usage: ./check_time.sh
#
cd "$(dirname "$0")" || exit 1
source run_setting

# Keep in sync with run_all.sh.
bench_dir=test
solvers=(vampire)

# Match "/bin/bash ./run_all.sh" but not e.g. "nvim run_all.sh".
pid=$(pgrep -o -f '^[^ ]*sh [^ ]*run_all\.sh( |$)')
if [[ -n $pid ]]; then
    ps -o pid,etime,lstart,args -p "$pid"
    elapsed=$(ps -o etimes= -p "$pid")
    start=$(( $(date +%s) - elapsed ))
else
    echo "run_all.sh is not running"
fi

# The .w log of each (instance, solver) pair, named as in run_arg.sh.
w_files=()
while IFS= read -r inst; do
    for s in "${solvers[@]}"; do
        w_files+=("logs/${inst%/*}_${tm}_${mem}_${s}/${inst##*/}.w")
    done
done < <(find "${bench_dir}" -name "*.smt2")
total=${#w_files[@]}
if (( total == 0 )); then
    echo "no instances in ${bench_dir}"
    exit 1
fi

# Finished means runsolver wrote its summary (the check run_arg.sh skips on).
mapfile -t done_w < <(printf '%s\0' "${w_files[@]}" \
    | xargs -0 -r grep -l -s '^CPU user time ')
finished=${#done_w[@]}

# Solved means sat or unsat, with the same patterns as is_ok.sh.
sat=0
solved=0
if (( finished > 0 )); then
    sol_files=("${done_w[@]/%.w/.sol}")
    sat=$(printf '%s\0' "${sol_files[@]}" | xargs -0 -r grep -l -s -w \
        -e '^sat' -e '% SZS status Satisfiable' | wc -l)
    solved=$(printf '%s\0' "${sol_files[@]}" | xargs -0 -r grep -l -s -w \
        -e '^sat' -e '% SZS status Satisfiable' \
        -e '^unsat' -e '% SZS status Unsatisfiable' | wc -l)
fi

echo "finished: ${finished}/${total} ($(( finished * 100 / total ))%)"
echo "solved:   ${solved} (sat ${sat}, unsat $(( solved - sat )))"

[[ -n $pid ]] || exit 1

# Instances done by earlier runs are skipped, so only those finished since
# run_all.sh started say how fast this run goes.
done_run=0
if (( finished > 0 )); then
    done_run=$(printf '%s\0' "${done_w[@]}" | xargs -0 -r stat -c %Y \
        | awk -v s="$start" '$1 >= s' | wc -l)
fi
remaining=$(( total - finished ))

hms() {
    printf '%d:%02d:%02d' $(( $1 / 3600 )) $(( $1 % 3600 / 60 )) $(( $1 % 60 ))
}

if (( remaining == 0 )); then
    echo "all instances finished"
elif (( done_run == 0 )); then
    echo "nothing finished in this run yet, no estimate"
else
    left=$(( remaining * elapsed / done_run ))
    echo "this run: ${done_run} finished in $(hms "$elapsed")," \
        "$(hms $(( elapsed / done_run ))) per instance on average"
    echo "estimated time left: $(hms "$left")" \
        "(done around $(date -d "@$(( $(date +%s) + left ))" '+%a %H:%M'))"
fi
