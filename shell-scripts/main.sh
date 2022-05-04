#!/usr/bin/bash

# # ========================================
# # ============== PART I ==================
# # ========================================

# # ========================================
# # hello world example 1
# echo "Hello World"
# echo "See the files in current directory"
# ls

# # ========================================
# # variables example 1
# echo $USER
# echo $PATH

# # ========================================
# # variables example 2
# myName="Zahidul Islam"
# myAge=28 
# myOS="Linux"
# echo "Name: $myName"
# echo "Age: $myAge"
# echo "OS: $myOS"

# # ========================================
# # read input example 1
# echo -n "# Enter your name> "
# read myName
# echo -n "# Enter your age> "
# read myAge
# echo -n "# Enter your OS> "
# read myOS
# echo "Name: $myName"
# echo "Age: $myAge"
# echo "OS: $myOS"

# # ========================================
# # shell arithmetic example 1
# expr 4 + 9
# expr 10 - 4 
# expr 15 \* 4 # '*' has to be escaped
# expr 13 / 3 # integer division 
# expr 18 % 5 

# # ========================================
# shell arithmetic example 2
# num1=28
# num2=6
# expr $num1 + $num2
# expr $num1 - $num2
# expr $num1 \* $num2 # '*' has to be escaped
# expr $num1 / $num2 # integer division 
# expr $num1 % $num2 

# # ========================================
# if-else example 1, largest of two numbers
# echo -n "# Enter first number> "
# read num1
# echo -n "# Enter second number> "
# read num2
# if(( $num1 > $num2  ))
# then 
# 	echo "$num1 is greater than $num2"
# elif(( $num1 == $num2  ))
# then 
# 	echo "$num1 is equal to $num2"
# else
# 	echo "$num1 is less than $num2"
# fi

# # ========================================
# # if-else example 2, largest of three numbers
# echo -n "# Enter first number> "
# read a
# echo -n "# Enter second number> "
# read b
# echo -n "# Enter third number> "
# read c
# if(( $a > $b && $a > $c  ))
# then 
# 	echo "$a is the largest number"
# elif(( $b > $c  ))
# then 
# 	echo "$b is the largest number"
# else
# 	echo "$c is the largest number"
# fi

# # ========================================
# # if-else example 3, smallest of three numbers
# echo "# Enter three numbers: "
# read a 
# read b
# read c
# if(( $a < $b && $a < $c  ))
# then 
# 	echo "$a is the smallest number"
# elif(( $b < $c  ))
# then 
# 	echo "$b is the smallest number"
# else
# 	echo "$c is the smallest number"
# fi

# # ========================================
# # switch case example 1
# echo -n "is it morning? please answer yes or no: "
# read timeofday
# case $timeofday in
# 	YES) echo "Good Morning!";;	# double semicolorn for break
# 	Yes) echo "Good Morning!";;
# 	yes) echo "Good Morning!";;
# 	y) echo "Good Morning!";;
# 	NO) echo "Good Afternoon!";;
# 	No) echo "Good Afternoon!";;
# 	no) echo "Good Afternoon!";;
# 	n) echo "Good Afternoon!";;
# 	*) echo "Sorry, answer not recognized!";;
# esac

# # ========================================
# # switch case example 1
# echo -n "is it morning? please answer yes or no: "
# read timeofday
# case $timeofday in
# 	yes|y|Yes|YES) echo "Good Morning!";;
# 	n*|N*) echo "Good Afternoon!";;
# 	*) echo "Sorry, answer not recognized!";;
# esac

# # ========================================
# # for loop example 1, string reading
# for i in "abcde"
# do
# 	echo $i
# done

# # ========================================
# # for loop example 2, print numbers
# for i in {1..10}
# do
# 	echo $i
# done

# # ========================================
# # for loop example 2, print series
# for i in {1..20..2}
# do
# 	echo $i
# done

# # ========================================
# # for loop example 3, print series
# for((i=0; i<50; i++))
# do
# 	echo $i
# done

# # ========================================
# # for loop example 4, break & continue
# for((i=0; i<50; i++))
# do
# 	if((i%5==0))
# 	then
# 		continue
# 	elif((i>40))
# 	then
# 		break
# 	fi
# 	echo $i
# done

# # ========================================
# # for loop example 5, argument list
# echo "the number of args is $#"
# k=1
# sum=0
# for i in $*
# do
# 	echo "Argument $k: $i"
# 	((k+=1))
# 	((sum+=$i))
# done
# echo "Summantion = $sum"

# # ========================================
# # while loop example 1
# password="abcxyz"
# echo -n "# Enter your password> "
# read input
# while [ $input != $password ]
# do
# 	echo -n "Wrong password, enter again> "
# 	read input
# done
# echo "Correct password. Permission granted."

# # ========================================
# # while loop example 2
# x=1
# while [[ $x -le 5 ]]
# do
# 	echo "Welcome $x times"
# 	((x+=1))
# done

# # ========================================
# while loop example 3, factorial
# echo -n "# Enter n> "
# read n
# temp=$n
# fact=1
# while [ $n -gt 1 ]
# do
# 	((fact=fact*n))
# 	((n=n-1))
# done
# echo "factorial($temp) = $fact"

# # ========================================
# # while loop example 4, factorial
# # shell script for factorial of a number
# # factorial using while loop
# echo -n "Enter a number> "
# read num
# fact=1
# while [ $num -gt 1 ]
# do
#   fact=$((fact * num))  #fact = fact * num
#   num=$((num - 1))      #num = num - 1
# done
# echo $fact

# # ========================================
# # while, if, break example 1
# i=0
# while [[ $i -lt 10 ]]; do
# 	echo "Number: $i"
# 	((i++))
# 	if [[ $i -eq 5 ]]; then
# 		break
# 	fi
# done
# echo "All Done"

# # ========================================
# # infinite while loop example
# i=1
# while :
# do
# 	echo "infinite loop iteration $i"
# 	((i++))
# 	sleep .5
# done

# # ========================================
# # until loop example 1
# password="abc"
# echo -n "# Enter your password> "
# read input
# until [[ $input == $password ]]; do
# 	echo -n "Wrong password, try again: "
# 	read input
# done
# echo "Right password. permission granted"

# # ========================================
# # function example 1
# foo(){
# 	echo "Welcome to bash programming"
# }
# echo "Before function call"
# foo
# echo "After function call"

# # ========================================
# # function example 2
# showarg(){
# 	echo "total arguments: $#"
# 	i=1
# 	for arg in $*; do
# 		echo "Argument $i: $arg"
# 		((i++))
# 	done
# }
# echo "Before function call"
# showarg $*
# echo "After function call"

# # ========================================
# # returning from function example 1
# f(){
# 	var=123
# 	return $var
# }
# f
# echo $var

# # ========================================
# # returning from function example 2
# yes_or_no(){
# 	echo "is your name $*?"
# 	echo -n "enter yes or no: "
# 	read answer
# 	case $answer in
# 		y|yes|Yes|YES) return 0;;
# 		n|no|No|NO|*) return 1;;
# 	esac
# }
# if yes_or_no $1
# then
# 	echo "Hi $1, nice name"
# else
# 	echo "Never mind"
# fi

# # ========================================
# # ============== PART II =================
# # ========================================
# # #!/usr/bin/bash

# # ============================================
# # hello world, example 1
# echo "hello there. welcome to bash programming"

# # ============================================
# # for loop example
# for i in 1 2 3 4 5; do
# 	echo "welcome $i times"
# done

# # ============================================
# # menu driven shell program
# while :
# do
# 	clear
# 	echo "======================================="
# 	echo "============ MAIN MENU ================"
# 	echo "======================================="
# 	echo "[1] Show today's date and time"
# 	echo "[2] Show files in current directory"
# 	echo "[3] Show calendar"
# 	echo "[4] Show editor to write letters"
# 	echo "[5] Show basic calculator"
# 	echo "[6] Exit/Stop"
# 	echo "======================================="
# 	echo -n "Enter your choice [1-5]: "
# 	read yourChoice
# 	case $yourChoice in
# 		1) echo -n "Today is: `date`";
# 			printf "\n";
# 		   	echo -n "press any key to continue ";
# 		   	read;;
# 		2) echo "Files in `pwd`";
# 			ls; echo -n "press any key to continue "; 
# 			read;;
# 		3) cal; 
# 			echo -n "press any key to continue "; 
# 			read;;
# 		4) vi;;
# 		5) bc;;
# 		6) exit 0;;
# 		*) echo "oops! invalid choice. please choice [1-5]"; echo "press any key to continue "; read;;
# 	esac
# done

# # ========================================
# standard input
# echo -n "Roll: "
# read roll
# echo $roll

# # ============================================
# # evaluating arithmetic expression
# var1=$(( (4+5)*3 ))
# echo $var1
# (( var1++ ))
# echo $var1
# ((var1--))
# echo $var1

# # ============================================
# # string operation example, string length
# text="Hello World"
# echo ${#text} # alike strlen()

# # ============================================
# # string length using wc -c, args
# arg=$*
# len=`echo $arg | wc -c`
# echo $len 

# # ============================================
# # string length using wc -c
# echo -n "Enter a string> "
# read str
# len=`echo $str | awk '{print length}'`
# echo $len 

# # ============================================
# # function example, factorial
# fact(){
# 	n=$1 # from argument no 1
# 	result=1
# 	for((i=1;i<=n;i++))
# 	do
# 		result=$((result*i))
# 	done
# 	return $result
# }
# # fact 5
# fact $1
# echo $result
# echo "Finished execution"

# # ============================================
# # function example, recursion
# fun(){
# 	echo "# inside fun()"
# 	n=$1
# 	if [[ n -gt 10 ]]; then
# 		exit
# 	fi
# 	((n++))
# 	fun $n
# }
# fun 1

# # ============================================
# # array example 1
# myArray=(4 9 2 3 5)
# echo "${myArray[0]}"
# echo "${myArray[1]}"
# echo "${myArray[2]}"
# echo "${myArray[3]}"
# echo "${myArray[4]}"
# echo ""

# for i in ${myArray[@]}
# do
# 	echo $i
# done

# # ============================================
# # sum of array elements example 1
# nums=(4 9 2 3 5 7 8 1 6 0)
# sum=0
# for num in ${nums[@]}
# do
# 	sum=$((sum + num))
# done
# echo "Summation: $sum"
# echo "Array size: ${#nums[@]}"

# # ============================================
# # looping through array by index example 1
# nums=(4 9 2 3 5 7 8 1 6 0)
# for i in ${!nums[@]}
# do
# 	echo "${nums[$i]}"	
# done

# # ============================================
# # printing full array example
# myIndexedArray=(One Two Three Four Five)
# echo ${myIndexedArray[*]}
# echo ${myIndexedArray[@]}

# # ============================================
# # iterating over an array example
# testArray=(apple orange grapes mango banana)
# echo "${testArray[*]}" # returns full array
# echo "${testArray[@]}" # returns full array
# echo "${!testArray[@]}" # returns array index i.e. i, index list
# echo "${#testArray[@]}" # returns array length, len

# # ============================================
# # deleting an array example 1
# powerOfTwo=(1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536)
# echo "${powerOfTwo[*]}" # returns full array
# unset powerOfTwo[0] # deleting first element of the array
# echo "${powerOfTwo[*]}" # returns full array
# unset powerOfTwo # deleting an array
# echo "${powerOfTwo[*]}" # returns full array

# # ============================================
# # arithmetic expression evaluation
# x=4
# y=9
# sum=$((x+y))
# echo "$x + $y = $sum"

# # ============================================
# # print format example
# echo "Printing text with newline"
# echo -n "Printing text without newline"
# echo -e "\nRemoving \tbackslash \tcharacters\n"

# # ============================================
# # while loop revision example 1
# valid=true
# count=1
# while [[ $valid ]]; do
# 	echo $count
# 	if [[ $count -eq 5 ]]; then
# 		break
# 	fi
# 	((count++))
# done

# # ============================================
# # for loop revision example 1
# for (( i = 10; i > 0; i-- )); do
# 	echo -n "$i "
# done
# printf "\n"

# # ============================================
# # if with and logic example 1
# echo -n "# Enter username> "
# read username
# echo -n "# Enter password> "
# read password
# if [[ ( $username == "admin" ) && ( $password == "p@ssword" ) ]]; then
# 	echo "valid user"
# else
# 	echo "invalid user"
# fi

# # ============================================
# # if with or logic example 1
# echo -n "# Enter a number> "
# read num
# if [[ ( $num -eq 15 || $num -eq 45 ) ]]; then
# 	echo "You won the game"
# else
# 	echo "You lost the game"
# fi

# # ============================================
# # command line argument example 
# echo "total arguments: $#"
# i=1
# for arg in $*
# do
# 	echo "arguemnt $i: $arg"
# 	((i++))
# done

# # ============================================
# # string concatenation example 
# string1="Bash"
# string2=" Programming"
# string3+=$string1
# string3+=$string2
# echo $string3

# # ============================================
# # get substring example 
# string="Bash Programming"
# sub_string=${string:5:7}
# echo $sub_string

# # ============================================
# # adding three numbers example 
# echo "# Enter x, y, z: "
# read x
# read y
# read z
# ((sum=x+y+z))
# echo "Summation = $sum"

# # ============================================
# # function with parameters example
# rectangle_area(){
# 	((area=$1*$2))
# 	echo "length = $1"
# 	echo "width = $2"
# 	echo "area = $area"
# }
# rectangle_area 4 9
# printf "\n"
# rectangle_area 24 36

# # ============================================
# # return from function example
# # note: every variable is global in bash
# greeting(){
# 	str="Hello, $name"
# 	echo "$str"	# returning
# }
# echo -n "# Enter your name> "
# read name

# val=$(greeting) # capturing the returned value
# echo "return value of function is $val"

# # ============================================
# # making a new directory
# echo -n "# Enter a directory name> "
# read newdir
# `mkdir $newdir`

# # ============================================
# # making directory by checking existence
# echo -n "# Enter a directory name> "
# read newdir
# if [[ -d $newdir ]]; then
# 	echo "Directory alreay exists"
# else
# 	`mkdir $newdir`
# 	echo "Directory created"
# fi

# # ============================================
# # reading a file using readline
# fileName="index.txt"
# while read line; do
# 	echo $line
# done < $fileName

# # ============================================
# # reading a file using cat
# echo -n "# Enter a fileName> "
# read fileName
# if [[ -f $fileName ]]; then
# 	echo "$fileName exists"
# 	echo "# file content"
# 	cat < $fileName
# else
# 	echo "file does not exists"
# fi

# # ============================================
# # reading a file using do while
# fileName=$1
# ls
# printf "\n"
# if [[ -f $fileName ]]; then
# 	echo "$fileName exists"
# 	echo "# file content"
# 	while read line; do
# 		echo $line
# 	done < $fileName
# else
# 	echo "file does not exists"
# fi

# # ============================================
# # deleting a file with permission
# ls
# printf "\n"
# echo -n "# Enter filename to remove> "
# read fileName
# if [[ ! -f $fileName ]]; then
# 	echo "file does not exist"
# else
# 	rm -i $fileName 	# i for permission
# 	echo "file deleted successfully"
# fi

# # ============================================
# appending to a file
# ls
# printf "\n"
# echo -n "# Enter filename to append> "
# read fileName
# cat >> $fileName

# # ============================================
# # test if file exists
# ls
# printf "\n"
# echo -n "# Enter filename> "
# read fileName
# if [[ -f $fileName ]]; then
# 	echo "file exists"
# else
# 	echo "file does no exist"
# fi

# # ============================================
# # sending email | package installation required
# receipent="zahidulislam.jewel@gmail.com"
# subject="greetings"
# message="welcome to our site"
# `mail -s $subject $receipent << $message`

# # ============================================
# # parsing current date
# year=`date +%Y`
# month=`date +%m`
# day=`date +%d`
# hour=`date +%H`
# minute=`date +%M`
# second=`date +%S`
# echo `date`
# echo "current date: $day-$month-$year"
# echo "current time: $hour:$minute:$second"
# echo `date +%D`		# full date, month/day/year format
# echo `date +%x`		# full date, full year
# echo `date +%X`		# current time, local
# echo `date +%F`		# full date, year-month-day format

# # ============================================
# # wait command
# echo "wait command" &
# process_id=$!
# wait $process_id
# echo "Exited with status $?"

# # ============================================
# # sleep command.
# echo "wait for 5 seconds"
# sleep 5
# echo "completed"

# # ============================================
# # arithmentic expression evaluation using double brackets
# val1=$((10*5+15))
# echo $val1
# ((val1++))
# echo $val1
# ((val1=val1+45))
# echo $val1
# ((val1--))
# echo $val1
# ((val1=val1*2))
# echo $val1
# ((val1+=60))
# echo $val1
# ((val1=val1/6))
# echo $val1

# # ============================================
# # floating division example
# echo "55/3" # treated as string
# echo "55/3" | bc		# integer division
# echo "55/3" | bc -l		# float division
# echo "scale=2; 55/3" | bc -l	# precision

# # ============================================
# # using read command with options
# echo "# type your login information"
# read -p "username: " user
# read -sp "password: " pass
# if (( $user=="admin" && $pass=="12345")); then
# 	echo -e "\nsuccessful login"
# else
# 	echo -e "\nunsuccessful login"
# fi

# # ============================================
# # using read command to take multiple inputs
# echo "# typer your five favourite programming languages: "
# read lang1 lang2 lang3 lang4 lang5
# echo "$lang1 is your first choice"
# echo "$lang2 is your second choice"
# echo "$lang3 is your third choice"
# echo "$lang4 is your fourth choice"
# echo "$lang5 is your fifth choice"

# # ============================================
# # using read command with time limit
# read -t 5 -p "type your favourite color> " color
# echo $color

# # ============================================
# # reading file using for loop
# i=1
# for var in `cat index.txt`
# do
# 	echo "$i: $var"
# 	((i++))
# done

# # ============================================
# # infinite loop example
# n=1
# while :
# do
# 	printf "the current value of n=$n\n"
# 	if [[ $n -eq 3 ]]; then
# 		echo "good"
# 	elif [[ $n -eq 5 ]]; then
# 		echo "better"
# 	elif [[ $n -eq 7 ]]; then
# 		echo "ugly"
# 	elif [[ $n -eq 10 ]]; then
# 		exit 0
# 	fi
# 	((n++))
# 	sleep 0.5
# done

# # ============================================
# # taking filename as argument
# fileName=$1
# totalChar=`wc -c $fileName | awk '{print $1}'`
# echo "total number of characters in $fileName = $totalChar"

# # ============================================
# # gloabl variable in function
# # note: all variables are gloabl by default
# function f1(){
# 	retval="I like bash programming"
# }
# retval="I hate bash programming"
# echo $retval
# f1
# echo $retval

# # ============================================
# # returning from a function
# function f2(){
# 	local retval="using bash function"
# 	echo $retval	# returning using echo command
# }
# getval=$(f2)		# capturing returned value
# echo $getval

# # ============================================
# # global, local and return value of a function
# function f3(){
# 	local arg1=$1
# 	if [[ $arg1 != "" ]]; then
# 		retval="bash function with variable"
# 	else
# 		echo "no argument"
# 	fi
# }
# getval="bash function"
# f3 $getval
# echo $retval
# getval2=$(f3)
# echo $getval2

# # ============================================
# # return keyword, returning numeric value
# function f4(){
# 	echo "bash return statement exmaple"
# 	return 35
# }
# f4
# echo "return value of the function is $?" # returns numeric value of f4()
# val=$(f4) # this returns echo statement of f4()
# echo $val

# # ============================================
# # reading file content from command line
# while read line; do echo $line; done < index.txt # directly from terminal

# # ============================================
# # reading file content using bash script
# while read line 
# do
#  echo $line
# done < index.txt 

# # ============================================
# # passing file name from command line argument
# fileName=$1
# while read line 
# do
#  echo $line
# done < $fileName 

# # ============================================
# # creating multiple directory at once
# mkdir folder1 folder2 folder3 # terminal

# # ============================================
# # creating a directory when the directory path does not exist
# mkdir ./a/b/c # permission denined
# mkdir -p ./a/b/c # permission granted

# # ============================================
# # creating directory with permission
# mkdir -m 777 newdir2 # terminal
# stat newdir2

# # ============================================
# # create directory using script
# echo -n "# Enter the directory name: "
# read newdirname
# if [[ -d $newdirname ]]; then
# 	echo "directory already exists"
# else
# 	`mkdir -p $newdirname`
# 	echo "$newdirname directory is created"
# fi

# # ============================================
# # wait command with multiple processes
# echo "testing wait command1" &
# process_id=$!
# echo "testing wait command2" &
# wait $process_id
# echo $process_id
# echo "job 1 exited with status $?"
# wait $!
# echo "job 2 exited with status $?"

# # ============================================
# # testing wait command after using kill command
# echo "testing wait command"
# sleep 20 &
# pid=$!
# kill $pid
# wait $pid
# echo "$pid was terminated"

# # ============================================
# # checking the exit staus value
# function check(){
# 	echo "sleep for $1 seconds"
# 	sleep $1
# 	exit $2
# }
# check $1 $2 &
# b=$!
# echo "checking the status"
# wait $b && echo OK || echo NOT OK

# # ============================================
# # sleep command without suffix
# echo "waiting for 2 seconds"
# sleep 2
# echo "task completed"

# # ============================================
# # sleep command without suffix
# echo "waiting.."
# # sleep 2s
# # sleep 0.05m
# sleep 0.001h
# echo "task completed"

# # ============================================
# # sleep command with loop
# n=1
# while [[ $n -lt 10 ]]; do
# 	echo "n = $n"
# 	sleep 1s
# 	((n++))
# done

# # ============================================
# # sleep command in terminal with other commands
# ls && sleep 1 && pwd # 1s sleep between ls & pwd command
# time(ls; sleep 1s; pwd)
# printf "\n"
# time (echo -n "A "; sleep 1; echo -n "B "; sleep 1; echo -n "C ")

# # ============================================
# # cut command example
# for i in $(seq 10)
# do
# 	# echo $i
# 	# echo $(seq -s ' ' 1 9)
# 	echo $(seq -s ', ' 1 9)
# done
# printf "\n"
# echo $(seq 1 9)
# echo $(seq -s " - " 1 9)
