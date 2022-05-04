#!/usr/bin/bash

isPrime(){
	num=$1
	isPrime=1
	for (( i = 2; i*i <= num; i++ )); do
		if (( num % i == 0 )); then
			isPrime=0
			break
		fi
	done
	echo $isPrime
}
: '
for i in {2..100}; do
	prime=$(isPrime $i)
	if(( prime == 1 )); then
		echo -n "$i "
	fi
done
printf "\n"
'

read -p "# enter upper limit> " limit
for (( i=2; i<=limit; i++ )); do
	prime=$(isPrime $i)
	if(( prime == 1 )); then
		echo -n "$i "
	fi
done
printf "\n"