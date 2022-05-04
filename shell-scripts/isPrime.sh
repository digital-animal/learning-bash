#!/usr/bin/bash

isPrime=1
read -p "# enter an integer> " num

for (( i = 2; i*i <= num; i++ )); do
	echo "i = $i"
	if (( num % i == 0 )); then
		isPrime=0
		break
	fi
done

echo $isPrime

if (( isPrime == 1 )); then
	echo "$num is prime"
else
	echo "$num is not prime"
fi