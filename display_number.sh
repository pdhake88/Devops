#!/bin/bash
num=$1
for i in $(eval echo {1..$1});
 do
        echo $i;
done

#for i in $(seq 1 $1);
#do
#        echo "$i"
#done

#for ((i=1;i<=$1;i++)); do
 #   echo $i
#done
