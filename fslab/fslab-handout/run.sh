#!/bin/bash

compare_files() {
    local file1=$1
    local file2=$2
    diff <(tr -d '\n' < "$file1") <(tr -d '\n' < "$file2") > /dev/null
}

if [ ! -d "log" ]; then
    mkdir -p log
fi

for i in {0..15}
do
    make -s mount
    ./traces/"$i".sh > log/"$i".ans
    make -s umount

    if compare_files log/"$i".ans traces/"$i".ans; then
        echo "traces $i passed"
    else
        echo "traces $i failed"
    fi
    
done
