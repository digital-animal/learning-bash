# head command to show first n lines of a file
$ head index.txt 	# first 10 lines from the beginning by default
$ head -n 5 index.txt 	# first 5 lines from the beginning 
$ head -c 10 index.txt 	# first 10 bytes(chars) from the beginning 

# tail command to show last n lines of a file
$ tail index.txt 	# last 10 lines from the end by default
$ tail -n 5 index.txt 	# last 5 lines from the end 
$ tail -c 10 index.txt 	# last 10 bytes(chars) from the end 
$ tail -n +12 index.txt # last lines of the file starting from line 12
$ tail -n +11 index.txt | head -n 5 # extract from line 11 to line 15

# wc command
$ wc intro.txt 		# line + word + character count
$ wc -w intro.txt 	# word count
$ wc -l intro.txt 	# line count
$ wc -c intro.txt 	# character count
$ wc -wl intro.txt
$ wc -wc intro.txt
$ wc -lc intro.txt
$ wc -wlc intro.txt
$ ls | wc
$ cat index.txt | wc -l

# sort command to sort entries
$ sort numlist.txt 		# sort by ascii value
$ sort -n numbers.txt		# sort by numeric value
$ sort -r numbers.txt 		# sort in reverse order
$ sort -nr numbers.txt 		# sort in reverse order, numeric
$ sort -c numbers.txt 		# check if sorted & print disorder
$ sort -s numbers.txt		# stable sort
$ sort -ns numbers.txt		# stable sort, numeric 
$ sort -u numbers.txt 		# keeping only uniq values
$ sort -nu numbers.txt 		# keeping only uniq values, numeric 
$ sort -f alpha.txt		# ignore case
$ sort -R numbers.txt 		# sort file randomly i.e. disorder
$ sort -t',' -k2,2n employees.csv	# delimiter is comma, sort by column 2
$ sort -t$'\t' -k2,2 sample.tsv		# delimiter is tab, sort by column 2
$ sort -k2,2 students.txt		# delimiter is space, sort by column 2
$ sort -t',' -k2,2n -s duplicates.csv	# delimiter is comma, sort by column 2, stable sort
$ sort -t',' -r -s duplicates.csv	# delimiter comma, stable sort

# uniq command to filter out duplicate entries
$ uniq numbers.txt 		# data should be sorted 
$ uniq -u numbers.txt		# show non-duplicated lines
$ uniq -d numbers.txt		# show duplicated lines only
$ uniq -c numbers.txt		# count number of occurrences
$ uniq -dc numbers.txt		# count occurrence of duplicated lines
$ uniq -uc numbers.txt		# count occurrence of non-duplicatd lines
$ sort -n numbers.txt | uniq
$ sort -n numbers.txt | uniq -u
$ sort -n numbers.txt | uniq -d
$ sort -n numbers.txt | uniq -dc

# sed command i.e. stream editor command
# sed 's/regex-pattern/replacement-string/' file
$ sed 's/a/@/' towns.txt 	# replace first occurrence of a with @
$ sed 's/a/@/g' towns.txt 	# replace all occurrences of a with @
$ sed 's/Pineapple/Feta/' toppings.txt 
$ sed -i 's/billy/joe/' roster.txt 	# inplace edit
$ sed -i -r 's/billy/joe/' roster.txt 	# regex
$ sed -i 's/day/night/g' daynight.txt 	# group
$ cat intro.txt | sed '/^$/d' 		# remove empty lines
$ echo "It is daytime" | sed 's/day/night/'
$ echo "It is daytime. I enjoy programming in day. Today's the day" | sed 's/day/night/'
$ echo "it is daytime. i enjoy programming in day. today's the day" | sed 's/day/night/g'

# find command
$ find . -type d		# directories
$ find . -type f		# files
$ find . -type f -perm 777
$ find . -type f -perm 775
$ find . -type f -size +100k
$ find . -type f -size +5M
$ find . -empty
$ find . -type f -name "*.csv"
$ find . -iname "*.jpg" 	# ignore case
$ find . -type f -name "*.txt" -maxdepth 1
$ find . -type f -name "*.tsv" -maxdepth 1 -exec rm {} +
$ find . -type f -iname "*.jpg" -size +5000k -exec ls -lh {} \;
$ find ./path/ -name '*.txt' -exec rm '{}' \;
$ find . -type d -empty -exec rm -rf \;
$ find . -type d -exec chmod 775 {} +
$ find . -type d -exec chmod 644 {} \;
$ find . -type f -mmin +30 -ls
$ find . -type f -mtime +7 -ls
$ find . -empty -type d -exec rmdir {} \;
$ find . ! -iwholename '*.git*' -type f # files not in git directory

# grep command
# syntax: grep [option(s)] [pattern] [file]
$ grep "dhaka" cities.txt
$ grep -win "dhaka" cities.txt	# whole word match, ignore case, line number
$ grep -wil "dhaka" cities.txt	# whole word match, ignore case, file name only
$ grep -wic "dhaka" cities.txt	# whole word match, ignore case, match count
$ grep -wiR "dhaka" ./dir/	# whole word match, ignore case, serach recursively
$ grep -win "dhaka" ./dir/
$ grep -wiohR "dhaka" .		# output matches only, exclude file names
$ grep -wilR "dhaka" . 		# file names only, not output
$ grep -wihR "dhaka" . 		# exclude file names 
$ grep -wiR "dhaka" /home/username/Desktop/
$ grep -wiR -B 2 -A 1 "dhaka" .	# print 2 lines before and 1 line after matched pattern
$ grep -wiR -c 1 "dhaka" .	# print 1 line before and after the matched pattern
$ grep -v "dhaka" cities.txt	# print results not matching the pattern
$ grep -wiv "dhaka" cities.txt	# print results not matching the pattern
$ grep -P "\d{4}" numbers.txt
$ grep -P "[a-zA-Z]+" names.txt	# POSIX regex
$ grep -E "[a-zA-Z]+" names.txt	# extended regex
$ grep -P "\d{3}-\d{3}-\d{4}" contacts-short.csv
$ grep -oP "[a-zA-Z0-9\._\-%]+@[a-zA-Z0-9\._\-%]+\.(com|org|edu)" contacts-long.csv 
$ grep -oP "\d{3}-\d{3}-\d{4}" contacts-long.csv | sort -f > mobile-numbers.txt 
$ history | grep "awk"
$ history | grep "find"
$ ifconfig | grep -oE "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" # ip address
# '-' i.e. range symbol needs to be escaped if included in regex pattern

# awk command
$ awk '{print $0}' index.txt		# whole line, space delimited
$ awk '{print $1}' index.txt		# first match, space delimited
$ awk '{print $2}' index.txt		# second, space delimited
$ awk '{print $NF}' index.txt		# space delimited
$ awk '{print $1-$2}' index.txt		# space delimited
$ awk -F',' '{print $1}' names-age.csv	# comma delimited
$ awk -F',' '{print $1 $2}' names-age.csv
$ awk -F$'\t' '{print $1 $2}' sample.tsv # tab delimited""
$ awk '{sum+=$1}END{print sum}' matrix.txt 
$ echo "welcome to bash programming" | awk '{print $3, $4}'
$ echo "1:2:3" | awk -F':' '{print $1+$2+$3}'
$ printf "1:2:3" | awk -F':' '{print $1+$2+$3}'
$ printf "1 2 3" | awk 'BEGIN {OFS=":"};{print $1+$2+$3}'

# cut command
$ cut -b 1 names.txt	# cuts 1st byte from every line
$ cut -b 1,5 names.txt	# cuts 1st and 5th byte from every line
$ cut -b 1-5 names.txt	# cuts 1st through 5th byte from every line
$ cut -b 1- names.txt	# cuts 1st through last byte from every line
$ cut -b -5 names.txt	# cuts 1st through 5th byte from every line
$ cut -b 2,4,6 names.txt # cuts 2nd, 4th, 6th byte from every line
$ cut -c 1,3,5 names.txt # custs 1st, 3rd, 5th character from every line
$ echo "slicing example" | cut -b 1-6
$ echo "slicing example" | cut -b 1-
$ echo "slicing example" | cut -b -6
$ echo "slicing example" | cut -c 5-7
$ echo "slicing example" | cut -c 5,7
$ echo "slicing example" | cut --complement -c 5,7
$ cut -f 1 names-age.csv	# no delimiter, so space delimited
$ cut -d',' -f 1 names-age.csv # comma delimited
$ cut -d',' -f 2 names-age.csv	# comma delimited
$ cut -d',' -f 3 names-age.csv	# comma delimited
$ cut -d'@' -f 1 emails.txt	# @ delimited
$ cut -d'@' -f 2 emails.txt	# @ delimited
