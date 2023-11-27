#To Check the running process ps is used
ps	#displays the processes running with process id (PID)

#To terminate a process kill command can be used
kill 100	#kills the process with PID = 100

#To check all the processes including processed by other users
ps -ag	#This will display other logged users and processes too.

#Sometimes a process takes so long. but if terminal is closed
#then connection break, the process will normally be killed
#nohup (no hangup) command will deal with it.
#the command will continue to run if user log out.
#any output from the command is saved in a file called nohup.out
nohup command &


#if command is expensive and will take lot of processor resources
#nice command is good option
#nohup will internally call nice command
nice expensive-command &

#The most useful shell variable is the one that controls where the shell
#looks for commands. When you type the name of command, the shell
#normally looks for it first in the current directory, then in /bin
#, and then in usr/bin. This sequence of directories is called search path.
#and is stored in a shell variable called PATH.
#The default search path can be changed in user profile .profile.

#Example, this line sets the path to standard pule /usr/games:

PATH=.:/bin:/usr/bin:/usr/games #one way
PATH=$PATH:/usr/games			#another way

#If a long directory path is frequently referred then that can be
#saved in avariable and can be added in .profile

d=/very/long/directory/name #add to .profile
cd $d # To use the path

#If we want to use a variable value in our shell/command
#export can be used for same
export PATH


