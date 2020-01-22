#!/bin/bash

for i in {1..100}
do
	if [[ "$i%3" -eq 0 ]] && [[ "$i%5" -eq 0 ]]; then
		echo "devops"
	elif [[ "$i%3" -eq 0 ]] ; then
		echo "dev"
	elif [[ "$i%5" -eq 0 ]] ; then
                echo "ops"
	else
		echo $i
	fi
done

		 
