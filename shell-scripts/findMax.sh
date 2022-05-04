#!/usr/bin/bash

# numList=(4 9 2 3 5 7 8 1 6 0)
numList=(1971 2048 2046 101 73 997 224 572 13 24 729 243)

fullList=${numList[@]}
echo $fullList

size=${#numList[@]}
echo $size

# for i in ${!numList[@]}; do
# 	printf "%s\t%s\n" "$i" "${numList[$i]}"
# done

# for num in ${numList[@]}; do
# 	echo -n "$num "
# done
# printf "\n"

max=${numList[0]}
min=${numList[0]}

for num in ${numList[@]}; do
	if(( num > max )); then
		max=$num
	fi	

	if(( num < min )); then
		min=$num
	fi
done
printf "\n"
echo "# Max = $max"
echo "# Min = $min"