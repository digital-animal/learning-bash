#!/usr/bin/bash
##!/usr/bin/bash -x

# echo "hello bash script"
# echo "hello world" > file1.txt
# cat > file2.txt
# cat >> file3.txt

# this is a single line comment

# # ==========================================
# multi line comment
# this is line 1
# this is line 2
# this is line 3
# this is line 4
# this is line 5

# # ==========================================
# cat << creative
# this is hello creative text
# add another line
# creative

# # ==========================================
# conditional example 1
# count=10
# # if [ $count -eq 10 ]
# # if  [ $count -eq 5 ]
# # if [ $count -ne 10 ]
# # if [ $count -gt 10 ]
# if [ $count -lt 10 ]
# then
# 	echo "the condition is true"
# else
# 	echo "the condition is false"
# fi

# # ==========================================
# conditional example 2
# a=10
# # b=5
# b=15
# if (( $a > $b ))
# then
# 	echo "a is greater than b"
# else
# 	echo "a is not greater that b"
# fi

# # ==========================================
# conditional example 3
# a=4
# # a=44
# b=9
# # c=2
# c=12
# if (( $a > $b && $a > $c  ))
# then
# 	echo "a is largest"
# elif (( $b > $a && $b > $c  ))
# then
# 	echo "b is largest"
# else
# 	echo "c is largest"
# fi

# # ==========================================
# case statement example 1
# while loop example 1
# number=1
# while (( $number < 10 ))
# do
# 	echo $number
# 	number=$(( number+1 ))
# done

# # ==========================================
# # until loop example 1
# number=1
# until (( $number > 10 ))
# do
# 	echo $number
# 	number=$(( number+1 ))
# done

# # ==========================================
# for loop example 1
# for i in 1 2 3 4 5
# do
# 	echo $i
# done

# # ==========================================
# for loop example 2
# for i in {0..20}
# do
# 	echo $i
# done

# # ==========================================
# # for loop example 3
# for i in {0..20..2}
# do
# 	echo $i
# done

# # ==========================================
# # for loop example 4
# for (( i=0; i<=50; i++ ))
# do
# 	echo $i
# done

# # ==========================================
# # break example
# for (( i=0; i<=50; i++ ))
# do
# 	if (( $i == 20 ))
# 	then 
# 		break
# 	fi
# 	echo $i
# done

# # ==========================================
# # continue example
# for (( i=0; i<=50; i++ ))
# do
# 	if (( $i % 2 == 0 ))
# 	then 
# 		continue
# 	fi
# 	echo $i
# done

# # ==========================================
# # input example 1
# # echo $1 $2 $3
# # echo $0 $1 $2 $3
# args=($@)
# # echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
# echo $@
# echo $#

# # ==========================================
# # input file example
# while read line
# do 
# 	echo $line
# done < ${1:-/dev/stdin}

# # ==========================================
# output example
# ls -la 1>file4.txt 2>file5.txt

# MESSAGE="Welcome to bash programming"
# export MESSAGE
# ./secondScript.sh

# # ==========================================
# # string matching
# read -p "# Enter 1st string> " str1
# read -p "# Enter 2nd string> " str2
# if [[ $str1 == $str2 ]]; then
# 	echo "strings match"
# else
# 	echo "strings do no match"
# fi

# # ==========================================
# # string length comparision
# read -p "# Enter 1st string> " str1
# read -p "# Enter 2nd string> " str2
# if [[ $str1 < $str2 ]]; then
# 	echo "string2 is longer"
# elif [[ $str1 == $str2 ]]; then
# 	echo "strings are equal"
# else
# 	echo "string1 is longer"
# fi

# # ==========================================
# # string length 
# read -p "# Enter a string> " str1
# echo "string length: ${#str1}"

# # ==========================================
# # string concatenation
# read -p "# Enter 1st string> " str1
# read -p "# Enter 2nd string> " str2
# str3=$str1$str2
# str4="$str1 $str2"
# str5=$str1
# str5+=$str2
# echo $str3
# echo ${#str3}
# echo $str4
# echo ${#str4}
# echo $str5
# echo ${#str5}

# # ==========================================
# # string uppercase & lowercase conversion
# read -p "# Enter a string> " str1
# str_lower=${str1^}
# str_upper=${str1^^}
# echo $str1
# echo $str_lower
# echo $str_upper

# # ==========================================
# # arithmetic operations
# n1=48
# n2=36
# echo $(( n1 + n2 ))
# echo $(( n1 - n2 ))
# echo $(( n1 * n2 ))
# echo $(( n1 / n2 ))
# echo $(( n1 % n2 ))
# printf "\n"
# echo "$n1 + $n2" | bc
# echo "$n1 - $n2" | bc
# echo "$n1 * $n2" | bc
# echo "$n1 / $n2" | bc
# echo "$n1 / $n2" | bc -l
# echo "scale=2; $n1 / $n2" | bc -l
# echo "$n1 % $n2" | bc

# # ==========================================
# # decimal to binary using bc
# read -p "# Enter a decimal value> " dval
# # read dval
# echo -n "the binary value of $dval is: "
# echo "obase=2; ibase=10; $dval" | bc

# # ==========================================
# # decimal to octal using bc
# read -p "# Enter a decimal value> " dval
# # read dval
# echo -n "the binary octal of $dval is: "
# echo "obase=8; ibase=10; $dval" | bc

# # ==========================================
# # # decimal to hexadecimal using bc
# read -p "# Enter a decimal value> " dval
# # read dval
# echo -n "the hexadecimal value of $dval is: "
# echo "obase=16; ibase=10; $dval" | bc

# # ==========================================
# # # binary to decimal using bc
# read -p "# Enter a binary value> " bin
# echo -n "the decimal value of $bin is: "
# echo "obase=10; ibase=2; $bin" | bc

# # ==========================================
# # # binary to hexadecimal using bc
# read -p "# Enter a binary value> " bin
# echo -n "the hexadecimal value of $bin is: "
# echo "obase=16; ibase=2; $bin" | bc

# # ==========================================
# # # hexadecimal to decimal using bc
# read -p "# Enter a hexadecimal value> " hexval
# echo -n "the decimal value of $hexval is: "
# echo "obase=10; ibase=16; $hexval" | bc

# # ==========================================
# # # hexadecimal to binary using bc
# read -p "# Enter a hexadecimal value> " hexval
# echo -n "the binary value of $hexval is: "
# echo "obase=2; ibase=16; $hexval" | bc

# # ==========================================
# # declare command
# declare myvar=492
# decpare -p
# declare myvar=357

# # ==========================================
# # declare read only variable
# declare -r pwdfile=/etc/passwd # read only
# echo $pwdfile
# pwdfile=/etc/abc.txt
# echo $pwdfile

# # ==========================================
# # arrays
# cars=("BMW" "Toyota" "Honda" "Suzuki" "Nissan")
# echo $cars
# echo ${cars[0]}
# echo ${cars[1]}
# echo ${cars[2]}
# echo ${cars[3]}
# echo ${cars[4]}
# echo ${cars[@]} # prints all elements
# echo ${!cars[@]} # prints indexes
# echo ${#cars[@]} # prints length

# # ==========================================
# # iterating arrays
# cars=("BMW" "Toyota" "Honda" "Suzuki" "Nissan")

# for car in ${cars[@]}; do
# 	echo $car
# done

# # ==========================================
# # deleting arrays elements and whole array
# unset cars[2] # deleting an array element
# echo ${cars[@]} # prints all elements
# echo ${!cars[@]} # prints indexes
# echo ${#cars[@]} # prints length
# unset cars # delete whole array
# echo ${cars[@]} # prints all elements

# # ==========================================
# # functions
# function funcName(){
# 	echo "this is new function" # echo string is also returned
# }

# funcName
# result=$(funcName)
# echo $result

# # ==========================================
# # function argument
# function funcPrint(){
# 	echo $1
# }

# funcPrint "Hello"

# # ==========================================
# # function argument
# function passingParameter(){
# 	echo $1 $2 $3 $4 $5
# }

# passingParameter 4 9 2 3 5 

# # ==========================================
# # returning values
# function returningValue(){
# 	string_value="using function to return a string"
# 	echo $string_value # echo is a must to return
# }

# returned_result=$(returningValue)
# echo $returned_result

# # ==========================================
# # returning values
# function funCheck(){
# 	global_var="I love linux"
# }

# global_var="I love windows"
# echo $global_var
# funCheck
# echo $global_var\

# # ==========================================
# # check directory existence
# mkdir -p directory1
# read -p "# Enter directory name> " dirName
# if [[ -d $dirName ]]; then
# 	echo "$dirName exists"
# else
# 	echo "$dirName does not exist"
# fi

# # ==========================================
# # check file existence & create file
# read -p "# Enter file name> " fileName
# if [[ -f $fileName ]]; then
# 	echo "$fileName already exists"
# else
# 	`touch xfile.txt`
# 	echo "$fileName created successfully"
# fi

# # ==========================================
# # appending text into the file
# read -p "# Enter file name to append soemthing> " fileName
# if [[ -f $fileName ]]; then
# 	echo "# Enter the text that you want to append"
# 	read text
# 	echo $text >> $fileName
# else
# 	`touch xfile.txt`
# 	echo "$fileName created."
# 	echo "# Enter the text that you want to append"
# 	read text
# 	echo $text > $fileName
# fi

# # ==========================================
# # read file line by line
# read -p "# Enter file name from which you want to read> " fileName
# if [[ -f $fileName ]]; then
# 	while IFS="" read -r line
# 	do
# 		echo $line
# 	done < $fileName

# else
# 	echo "# Sorry. File does not exists"
# fi

# # ==========================================
# # read file line by line
# read -p "# Enter file name to delete> " fileName
# if [[ -f $fileName ]]; then
# 	`rm $fileName`
# 	echo "File deleted successfully"
# else
# 	echo "# Sorry. File does not exists"
# fi

# # ==========================================
# # sending email using "ssmtp"
# # pass [2h 02min]
# # >> sudo apt install ssmtp

# # ==========================================
# # curl in scripts, downloading file
# # time [2h 05min]
# url="http://speedtest.ftp.otenet.gr/files/test1Mb.db"
# curl ${url} -O

# # ==========================================
# # curl in scripts
# # time [2h 08min]
# url="http://speedtest.ftp.otenet.gr/files/test1Mb.db"
# # curl ${url} -o "newfiledownloaded"
# curl ${url} > "outputfiledownloaded"

# # ==========================================
# # curl in scripts, checking header before download
# # time [2h 08min]
# url="http://speedtest.ftp.otenet.gr/files/test1Mb.db"
# curl -I ${url}

# # ==========================================
# # professional menus
# select car in BMW MERCEDES TESLA ROVER TOYOTA SUZUKI NISSAN
# do
# 	echo "You have selected $car"
# done

# # ==========================================
# # professional menus, select with case
# select car in BMW MERCEDES TESLA ROVER TOYOTA SUZUKI NISSAN
# do
# 	case $car in
# 		BMW )
# 			echo "$car Selected";;
# 		MERCEDES )
# 			echo "$car Selected";;
# 		TESLA )
# 			echo "$car Selected";;
# 		ROVER )
# 			echo "$car Selected";;
# 		TOYOTA )
# 			echo "$car Selected";;
# 		SUZUKI )
# 			echo "$car Selected";;
# 		NISSAN )
# 			echo "$car Selected";;		
# 		* )
# 			echo "ERROR! Please select a valid car name";;
# 	esac
# 	# echo "You have selected $car"
# done

# # ==========================================
# # wait for user input
# echo "Press any key to continue"
# while [[ true ]]; do
# 	read -t 3 -n 1
# 	if [[ $? = 0 ]]; then
# 		printf "\n"
# 		echo "script terminated"
# 		exit;
# 	else
# 		echo "waiting for your input.."
# 	fi
# done

# # ==========================================
# # wait for filesystem events with inotify, temporary directory
# # time [2h 22min]
# # >> sudo apt install inotify-tools
# mkdir -p temporary
# inotifywait -m temporary 

# # ==========================================
# # wait for filesystem events with inotify, tempfile
# # time [2h 27min]
# touch tempfile.txt
# inotifywait -m tempfile.txt 

# # ==========================================
# # intro to grep command
# echo -n "# Enter filename to search text from> "
# read fileName
# fileName="greptest.txt"

# if [[ -f $fileName ]]; then
# 	echo -n "# Enter text to search> "
# 	read grepvar
# 	# grep -winP $grepvar $fileName
# 	# grep -c $grepvar $fileName
# 	# grep -v $grepvar $fileName
# 	grep -cv $grepvar $fileName
# else
# 	echo "$ does not exist"
# fi

# # ==========================================
# # awk command
# echo -n "# Enter filename to parse using awk> "
# read fileName
# fileName="awktest.txt"

# if [[ -f $fileName ]]; then
# 	# awk '{print $1}' $fileName
# 	awk '/1/ {print $1}' $fileName
# else
# 	echo "$ does not exist"
# fi

# # ==========================================
# # sed command | sed=stream editor
# echo -n "# Enter filename to edit using sed> "
# read fileName
# fileName="sedtest.txt"

# if [[ -f $fileName ]]; then
# 	sed 's/j/J/' $fileName
# else
# 	echo "$ does not exist"
# fi

# # ==========================================
# # sed command | sed=stream editor, sed replace global
# echo -n "# Enter filename to edit using sed> "
# read fileName
# fileName="file1.txt"

# if [[ -f $fileName ]]; then
# 	# cat file1.txt | sed 's/h/H/'
# 	# cat file1.txt | sed 's/g/G/g'
# 	# sed -i 's/g/G/g' $fileName # inplace, modifies the file
# 	sed -i 's/world/linux/g' $fileName # inplace, modifies the file
# else
# 	echo "$ does not exist"
# fi

# # ==========================================
# # debugging bash script, debugging if else
# # bash -x script.sh # debug command
# echo "Welcome to bash programming"
# num=4

# if [[ $num -eq 4 ]]; then
# 	echo "four"
# else
# 	echo "not four"
# fi 

# # ==========================================
# # debugging for loop in bash
# for (( i = 0; i < 10; i++ )); do
# 	# echo -n $i
# 	echo $i
# done
# printf "\n"

# # ==========================================
# # debugging arithmetic expression in bash
# x=4
# y=9
# sum=$((x+y))
# echo $sum
# printf "\n"

# # ==========================================
# # decimal addition in bash using bc
# x=4.9
# y=2.3
# sum=$(echo "$x+$y" | bc) 
# echo $sum
# printf "\n"

# # ==========================================\
# # debugging arithmetic statement
# x=40
# ((x++))
# echo $x
# ((x+=23))
# echo $x
# ((x--))
# echo $x
# ((x=x+56))
# echo $x
# y=25
# echo $y
# z=13
# echo $z

# set -x # debugging starting point
# if(( x>y && x>y )); then
# 	echo "$x larger"
# elif(( y>x && y>z )); then
# 	echo "$y larger"
# else
# 	echo "$z larger"
# fi
# set -x # debugging end point

# echo "done with debugging"
# ((sum=x+y+z))
# echo $sum