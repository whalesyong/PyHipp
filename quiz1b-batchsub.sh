#!/bin/bash

days=("20181101" "20181102")
arrays=("array01" "array02" "array03")

base_dir="/data/picasso/"   

for day in "${days[@]}"; do
    session_dir="$base_dir/$day/session01"
    for arr in "${arrays[@]}"; do
        arr_path="$session_dir/$arr"
        if [ -d "$arr_path" ]; then
            cd "$arr_path" || continue
	    cwd="$(pwd)"
	    echo $cwd
	    sbatch /data/src/PyHipp/quiz1b-slurm.sh
        fi
    done
done
