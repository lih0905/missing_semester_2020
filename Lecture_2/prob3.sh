#!/usr/bin/env bash
num=1
while : ;
	do
		res=$(./fail.sh)
		if [[ "$res" -ne 0 ]]; then
			echo $(res) > /dev/null 2> /dev/null
			echo "It fails after $num times"
			break
		fi
		num=$((num+1))
	done
