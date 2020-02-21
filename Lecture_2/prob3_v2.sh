#!/usr/bin/env bash
num=0
while [[ "$?" -eq 0 ]] ; # 마지막 명령의 리턴값으로 판별
	do
		num=$((num+1)) # num+=1 을 shell 에서 입력하는 방법
		./fail.sh &> res.txt # %> : STDOUT과 STDERROR 모두 res.txt로 전달
	done
echo "It fails after $num times"
cat res.txt
