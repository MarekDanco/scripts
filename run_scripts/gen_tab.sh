#!/bin/bash
if [[ $# < 3 ]]; then
    echo "Usage: $0 instance_directory log_directory solver"
    exit 100;
fi

function get_value0 { # FILE PATTERN
  value=`grep -e "${2}" "${1}" | tail -n -1 | sed -e 's/'"${2}"' *//'`
  if [ -z "${value}" ]; then
	  echo 0
  else
	  echo "${value}"
  fi
}

function get_value { # FILE PATTERN
  grep -e "${2}" "${1}" | tail -n -1 | sed -e 's/'"${2}"' *//'
}

function detect { # FILE PATTERN REPLACE
  GRES=`grep -e "${2}" "${1}" | tail -n -1 | sed -e 's|'"${2}"' *|'"${3}"'|'`
  if [ -n "${GRES}" ]; then
     echo -n "${GRES}"
  fi
}

ID=${1}
LD=${2}
SV=${3}
re='^[0-9]+ *$'
re='^[0-9]+ *$'

SUFFIX=.smt2
not_done=0
for FF in `ls -rSH ${1}/*${SUFFIX}`
do
  F=`basename $FF`
  SOLUTION_FILE=${2}/${F}.sol
  ERR_FILE=${2}/${F}.err
  W_FILE=${2}/${F}.w

  if [ ! -f ${W_FILE} ]; then
    let not_done=${not_done}+1
    continue
  fi

  if ! grep -q -e '^CPU user time ' ${W_FILE};
  then
	  let not_done=${not_done}+1
	  # echo >&2 '++' missing: ${F}
	  continue
  fi

  problem_name=`readlink -f $FF | sed -e 's/\/home\/mikolas\/smt\///'`
  _TIME=`grep -e '^CPU time (s):' ${W_FILE} | tail -n1 | sed -e 's/CPU time (s)://'| sed 's/ //'`
  TIME=`printf "%0.f\n" ${_TIME}`
  _WTIME=`grep -e '^Real time (s):' ${W_FILE} | tail -n1 | sed -e 's/Real time (s)://'| sed 's/ //'`
  WTIME=`printf "%0.f\n" ${_WTIME}`
  if GENS=`./is_ok.sh ${FF} ${SOLUTION_FILE}`; then
	  ANSWER="s ${GENS}"
  else
	  ANSWER='n'
  fi
  mem=`detect ${W_FILE} 'Max. virtual memory (cumulated for all children) (KiB):' ''`
  if [ -n "$mem" ]; then
	  # echo $mem >&2
	  mem=m:`expr $mem / 1024`MB
  fi
  status=`grep -e '^Child status:' ${W_FILE} | tail -n1 | sed -e 's/Child status://' | sed 's/ //'`
  if [ "$status" != "0" ] && [ "$status" != "143" ]
  then
    echo >&2 '+ strange exit code: ' ${F}
  fi
  echo -n "$problem_name  ; ${TIME} ${WTIME} (s) ${mem}; ${ANSWER} "
  detect ${SOLUTION_FILE} "terminated in:" "trm:"
  echo -n '<br>'
  detect ${SOLUTION_FILE} "longest phase:" "lph:"
  echo -n '<br>'
  detect ${SOLUTION_FILE} "iteration:" "its:"
  echo -n ' '
  detect ${SOLUTION_FILE} "pures:" "prs:"
  echo -n ' '
  detect ${SOLUTION_FILE} "mul_axioms:" "*:"
  echo -n ' '
  detect ${SOLUTION_FILE} "div_axioms:" "/:"
  echo -n ' '
  detect ${SOLUTION_FILE} "mod_axioms:" "%:"
  echo ''
done
echo >&2 '+' missing: ${not_done}

if [ ${not_done} -eq 0 ]
then
	exit 0
else
	exit 1
fi

