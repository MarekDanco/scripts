#!/bin/bash
#
# Show how long a script (default: run_all.sh) has been running.
# Usage: ./check_time.sh [script_name]
#
name=${1:-run_all.sh}

# Match "/bin/bash ./run_all.sh ..." but not e.g. "nvim run_all.sh" or this script.
pids=$(pgrep -d, -f "^[^ ]*sh [^ ]*${name//./\\.}( |$)")

if [[ -z $pids ]]; then
    echo "$name is not running"
    exit 1
fi

ps -o pid,etime,lstart,args -p "$pids"
