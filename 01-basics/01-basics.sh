#pwd Command
pwd		#Print current location

# Date Command - Prints Date and Time
date

# who command - Tells whoever loggedin to the system
# tty stands for "teletype" - an archaic synonym for "terminal"
# pts is pyseudo terminal
who

#Example Output of who command
#user1  tty1         2023-11-26 12:17
#user1  pts/0        2023-11-26 12:17 (192.168.29.185)


#who am i command show the logged users
who am i

#Directories - mkdir is command to create a new diretory
#cd changing directory
cd		#Return to home directory
mkdir	#mkdir book - make a directory book
cd book	#Go to book directory
pwd		#check if you are in book directory
cd..	#move up one level in file system
rmdir	#removes only empty directory



#ed is a simple screen editor. To use following are commands
ed 	#Invokes the text editor. Type ed and hit enter
a 	#ed command to add text. Type a and hit enter to add text
#type anything. After writing text, hit enter
.	#a . is to stop adding text. Type . and hit enter to stop adding text
w name #write the text in filename(name). Type w <filename> and hit enter
q 	#quit ed. Type q to exit ed.
ed filename	# to edit an exiting file



# ls commands
ls	#list names of files in current directory
ls filename	# list only the named file
ls -t	#list in time order, most recent first
ls -l	#list long: more information: also ls -lt
ls -u	#list by time used: also ls -lu, ls -lut
ls -r	#list in reverse order: also ls -rt, ls -rlt,

# Copy Move and Remove Commands
cp file1 file2		#copy file1 to file2, overwrite old file2 if it exists
mv file1 file2		#move file1 to file2, overwrite old file2 if it exists.
rm filename			#remove named files
rm *				#removes all files in current directory
rm *.save			#removes all files that end with .save in current directory
rm temp[a-z]		#removes any of tempa,...,tempz that exist in directory
rm temp?			#Remove files temp1,..tempa, tempz etc..

# Printing
cat filenames		#print the content of files
pr filenames		#print content with header, 66 lines per page

# File Content
wc filenames		#count lines, words and characters for each file
wc -l filenames		#count line of each file
grep pattern filenames		#print lines matching pattern
grep -v pattern filenames	#print lines not matching pattern

# Sorting Lines
sort filenames		#Sort lines of alphabetically

# tail
tail filenames		#print last 10 lines of file
tail -n filenames	#print last n lines of file
tail +n filenames	#start printing file at line n till end

#Comparison
cmp file1 file2		#print location of first difference
diff file1 file2	#print all differences between files.

#Redirect (>)
who > temp	#redirect the number of users to temp file

#Pipe (|)
#A pipe is a wy to connect the output of one program
#to the input of another program without saving output

who | sort		#Print sorted list of users
who | wc -l		#Count users
ls | wc -l		#Count files
who | grep mary	#Look for particular user