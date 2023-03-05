#!/usr/bin/bash -i
start_i=$1
end_i=$2

while [ $start_i -le $end_i ]
do
    if [ $start_i -le 9 ]
    then
        tmux new-session -d -s collect_job_0$start_i ./run_scripts/collect_job_0$start_i.sh
    else
        tmux new-session -d -s collect_job_$start_i ./run_scripts/collect_job_$start_i.sh
    fi
    start_i=`echo "$start_i + 1" | bc`
done
