#!/usr/bin/bash
# bash program to parse all emails from text files in a particular directory and its sub directories
pattern="([a-zA-Z0-9-_\.%]+)@([a-zA-Z0-9-_\.%])+(\.[a-z]+)"
# files=$(find . -type f -name '*.txt')

if [[ $# -eq 0 ]]
then
	files=$(find . -type f -name '*.txt')
elif [[ $# -eq 1 && -d $1 ]]
then
	files=$(find $1 -type f -name '*.txt')
fi

$(rm -Rf em1.txt)
$(touch em1.txt)

# grepping all emails to em.txt
for file in $files
do 
	# echo $file
	emails=$(cat $file | grep -oP $pattern | sort | uniq)
	for email in $emails
	do
		# echo "$email\n" >> em1.txt
		printf "$email\n" >> em1.txt
		# $(cat $email >> em1.txt)
	done
done

echo $(wc em1.txt)
echo $(sort em1.txt | uniq | wc)

$(rm -Rf em2.txt)
$(touch em2.txt)


emails=$(cat em1.txt | grep -oP $pattern | sort | uniq)
for email in $emails
do
	printf "$email\n" >> em2.txt
done

# echo $(sort em1.txt | uniq | sed 's/ /\n/g') >> em2.txt

echo $(wc em2.txt)
































