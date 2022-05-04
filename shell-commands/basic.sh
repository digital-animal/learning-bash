# # ====================================================
# # MISCELLANEOUS COMMANDAS
$ clear 	# clear screen
$ reset		# reset shell

# history command
$ history

# cal command for showing calendar
$ cal
$ cal 1 2022
$ cal 9 2022

# date command
$ date
$ date +%Y	# extract year
$ date +%m	# extract month
$ date +%d	# extract day
$ date +%H	# extract hour
$ date +%M	# extract minute
$ date +%S	# extract second
$ date -u	# UTC time
$ date +%F	# full date year-month-day
$ date +%D	# full date month/day/year
$ TZ='Asia/Dhaka' date	# GMT+6 time
$ date +"%Y%m%d_%H%M%S" # format suitable for affixing to file names

# factor command for factoring a number
$ fator [number]
$ factor 144

# cmatrix command for matrix simulation
$ cmatrix

# type command to see description of a command
$ type pwd

# mand command to see manual of a command
$ man wc

# whatis, whereis, which command
$ whatis pwd
$ whereis pwd
$ which pwd
$ which awk
$ whareis awk
$ whatis awk

# cheat command for commnd line help with example
$ cheat pwd
$ cheat awk


# # ====================================================
# # FILE AND DIRECTORY RELATED COMMANDS
# echo command to print string
# echo [options(s)] [strings(s)]
$ echo "Welcome to Bash Programming"
$ echo "Welcome to Bash Programming" > msg.txt
$ echo -e "Welcome \nto \nBash \nProgramming"
$ echo *

# rev command for reversing string
$ rev [option] [file...]
$ rev filename.ext
$ echo "1234" | rev

# file command
$ file		# determine file type

# stat command
$ stat file
$ stat directory

# ls command to list files and directories
$ ls		# list
$ ls . 		# list files in current directory
$ ls -l		# list files
$ ls -a 	# hidden files
$ ls -la	# list hidden files
$ ls -lh 	# human readable
$ ls -lah	# list hidden files, human readable
$ ls -F 	# full name 
$ ls -r 	# reverse list
$ ls -R 	# recursively all directories
$ ls -lR 
$ ls -lhR	# list files, humand readbale, recursively
$ ls -ltr 	# latest modification time
$ ls -lS 	# sort by size
$ ls -i 	# inode number
$ ls -ld 	# directory info
$ ls -n 	# UID & GID 
$ ll 		# ll is aliased to `ls -alF'

# tree command
$ tree
$ tree -L 2
$ tree --prune

# cat command
$ cat > xyz.txt		# concatenating to new file
$ cat >> xyz.txt 	# concatenating to exisiting file
$ cat < xyz.txt		# reading from file
$ cat xyz.txt		# reading from file
$ cat -n xyz.txt	# reading from file with line numbers

$ cat a.txt b.txt c.txt > abc.txt
$ cat a.txt b.txt c.txt >> abc.txt
$ cat < a.txt b.txt c.txt
$ cat a.txt b.txt c.txt

$ cat song.txt | more
$ cat song.txt | less
$ cat -n song.txt 	# line number

$ cat lineParser.h; cat script.sh; cat main.cpp # display multiple files at once

$ cat input.txt > output.md
$ cat input.txt >> output.md # appending

# cp command
$ cp /dir/abc.txt /dir/subdir

# mv command
$ mv [src] [destination]
$ mv /dir/abc.txt /dir/subdir
$ mv abc.txt xyz.txt 		# renaming file
$ mv -f index.txt /dir/subdir 	# force overwrite if already exists
$ mv -i index.txt /dir/subdir 	# ask permission to overwrite if already exists
$ mv -n index.txt /dir/subdir 	# never overwrite if already exists

# pwd commnad to show the absolute path of your current working directory
$ pwd

# cd command
$ cd path/to/directory
$ cd	# change to home directory of the current user
$ cd .. # go up to the parent of the current directory
$ cd -  # go to the previously chosen directory
$ cd ~ 	# change to root directory

# pushing current directory to the top of a stack while changing to the specified directory
pushd <directory>

# To return use popd
popd

# mkdir command
$ mkdir dirName
$ mkdir dirName1 dirName2
$ mkdir -p parent/child

# rmdir command
$ rmdir dirName # should be empty

# touch command
$ touch fileName.txt
$ mkdir -p parent/child/fileName.txt

# rm command
$ rm fileName.txt
$ rm -r dirName/fileName.txt
$ rm -rf dirName/fileName.txt

# chmod command
# read(r) = 4, write(w) = 2, exec(x) = 1
# owner(1st) + user group(2nd) + world(3rd)
# rwx = read, write & execute
# rw- = read & write
# r-x = read & execute
# -wx = write & execute
# rwxr-x--x = rwx(owner) + rx(user group) + x(world)
$ chmod 777 abc.sh
$ chmod 666 abc.sh
$ chmod 711 abc.sh
$ chmod u+x myscript.sh
$ chmod g+x myscript.sh
$ chmod o+x myscript.sh
$ chmod a+x myscript.sh
$ chmod +x myscript.sh

# chown command
$ chown root username

# tar command
# To extract a .tgz or .tar.gz archive:
tar -xvf /path/to/foo.tar	# extract an uncompressed archive
tar -xzvf /path/to/foo.tgz	# extract an compressed archive
tar -xzvf /path/to/foo.tar.gz
tar -xvf /path/to/foo.tar -C /path/to/destination/ # extract a .tar in specified Directory

# To create a .tgz or .tar.gz archive:
tar -cvf /path/to/foo.tar /path/to/foo/ 	# create an uncompressed archive
tar -czvf /path/to/foo.tgz /path/to/foo/ 	# create an compressed archive
tar -czvf /path/to/foo.tar.gz /path/to/foo/


# # ====================================================
# # OPERATING SYSTEM AND HARDWARE RELATED COMMANDS 
# neofetch command
$ neofetch 	# prints system summary in donought shape

# du command
$ du 		# disk usage as list
$ du -sh	# disk usage cumulative size
$ du -h --max-depth=1

# ncdu command (NCurses Disk Usage)
$ ncdu		# navigable overview of file space usage, improved du

# df command
$ df 		# free disk space as list
$ df -h		# free disk space as human readable format

# ps command reports a snapshot of the current processes
$ ps
$ ps -A
$ ps aux
$ ps aux | grep processName

# kill command
$ kill [option] PID

$ kill -9 PID
$ kill -SIGTERM PID
$ kill -SIGKILL PID

# pkill command
$ pkill processName

# killall command for killing parent process along with all child processes
$ killall processName

# top command for showing top linux processes running
$ top # along with keyboard stroke
M = sort by memory usage
P = sort by cpu usage
u = filter by user
z = filter by running processes
c = showing absolute path of the proceses
d = setting refresh rate of process screen
k = kill a process by pid
r = change process priority by pid
i = list idle processes
H = list total threads
1 = check running CPU cores
h = list global help commands
q = to quit process screen
$ top -n 1 -b > top-output.txt
$ top -n 10 # quit after 10 refresh

# htop command
$ htop

# uname command (unix name)
$ uname 	# system name
$ uname -s 	# kernel name
$ uname -n 	# network hostname
$ uname -v 	# kernel version
$ uname -r 	# kernel release
$ uname -m 	# hardware architecture
$ uname -o 	# os information
$ uname -a 	# all information

# lshw command to view linux hardware information in details
# lshw = list hardware
$ sudo lshw
$ sudo lshw -short
$ sudo lshw -short > lshw.html

# lscpu command to view information about cpu
$ lscpu # list cpu

# lsusb command to print usb controller information
$ lsusb 	# list usb
$ lsusb -v
$ lsusb -t

# shutdown command
$ shutdown
$ shutdown -P now	# shutdown immediately (now)
$ shutdown -h now	# halt immediately (now)
$ shutdown -r now	# reboot immediately (now)
$ shutdown -h +5 	# halt five minutes from now
$ shutdown -P +5 	# shutdown five minutes from now
$ shutdown -r +5 	# reboot five minutes from now
$ shutdown -c 		# cancel shutdown


# # ====================================================
# # NETWORKING COMMANDS
# ip command
$ ip addr	# display all interfaces with addresses
$ ip a 		# beief of ip addr command

# ifconfig command
$ ifconfig	# display all interfaces
$ ifconfig -a	# display all interfaces, even if down
$ sudo ifconfig enp0s31f6 down	
$ sudo ifconfig enp0s31f6 up

# ping command
$ ping www.google.com
$ ping 127.0.0.1	# ping localhost
$ ping -c 4 192.168.0.1	# ping host with 4 packets
$ ping -c 8 localhost 	# ping localhost with 8 packets
$ ping -c 15 -i .2 localhost # ping host with 15 packets, one every .2 seconds

# traceroute command
$ traceroute www.google.com
$ traceroute 127.0.0.1

# mtr command, network diag‐nostic tool
# mtr combines the functionality of the traceroute and ping programs 
$ mtr www.google.com
$ mtr 216.58.223.78

# route command showing kernel routing table
$ route
$ route -n 	# display routing table IP addresses instead of host names

# netstat command
$ sudo netstat -lnptu 	# view which users/processes are listening to which ports
$ sudo netstat -r 	# kernel routing table

# fast command to check bandwidth
$ fast

