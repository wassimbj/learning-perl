
#! FILE_HANDLE is a name (any name) to associate it with the physical file
#! its like setting a variable that points to a physical file in the system
#! its similar to the assign() function in Pascal

# perl has 2 methodes to open file
# 1) open(<FILE_HANDLE>, <MODE><FILE_NAME>): Array of file lines
open(myData, "<mocks/test_file.txt") or die "Couldn't open file test_file.txt, $!";
# $! => have the error

#? Modes: 
# "<" => read only
# ">" => create, write, truncate (remove)
# "+<" => write and read
# "+>" => Reads, Writes, Creates, and Truncates
# "+>>" => Reads, Writes, Appends, and Creates

while(<myData>) {
   print "$_";
}

print "\n";
# 2) sysopen(<FILE_HANDLE>, <FILE_NAME>, <MODE>|[MODE]|[MODE]...);

sysopen(myData2, "mocks/test_file.txt", O_RDONLY ) or die "Can't open file, $!";

while(<myData2>) {
   print "$_";
}

#? Modes:
# O_RDWR = Read and Write
# O_RDONLY = Read only
# O_RWONLY = Write only
# O_CREAT = Create file
# O_APPEND = Append to file
# O_TRUNC = Remove file
# O_EXCL = Stops if file already exists
# O_NONBLOCK = Non-Blocking usability

# close file
close(myData2) or die "Couldn't close file.";

# read binary files
$buffer;
# /etc/services is a form of binary file.
open(binaryData, "mocks/services") or die "couldn't open binary file $!";
#         FILE_HANDLE, SCALAR, LENGTH (bytes to read)
while(read(binaryData, $buffer, 100)) {
   print("$buffer \n");
}

# you comment the above while loop and uncomment this one to see the difference of using read()
# while(<binaryData>) {
#    print("$_ \n");
# }


# print method
# print FILE_HANDLE DATA
# can be used to move text from one file to onther
open(DATA1, "<mocks/file1.txt"); # open for reading
open(DATA2, "+>mocks/file2.txt"); # for writing

# Copy data from one file to another.
while(<DATA1>) {
   print DATA2 $_;
}



# rename file
#* rename("FROM_FILE", "TO_FILE") # TESTED (works)

# delete file
#* unlink("file_renamed.txt") # TESTED (works)


# File tests
$file = "mocks/file_that_doesnt_exist.txt";

# example:
# -e check file existance
if (-e $file) {
   print "FILE EXIST !"
} else {
   print "FILE DOESN'T EXIST"
}

# All the tests
# -A = Script start time minus file last access time, in days.
# -B = Is it a binary file?
# -C = Script start time minus file last inode change time, in days.
# -M = Script start time minus file modification time, in days.
# -O = Is the file owned by the real user ID?
# -R = Is the file readable by the real user ID or real group?
# -S = Is the file a socket?
# -T = Is it a text file?
# -W = Is the file writable by the real user ID or real group?
# -X = Is the file executable by the real user ID or real group?
# -b = Is it a block special file?
# -c = Is it a character special file?
# -d = Is the file a directory?
# -e = Does the file exist?
# -f = Is it a plain file?
# -g = Does the file have the setgid bit set?
# -k = Does the file have the sticky bit set?
# -l = Is the file a symbolic link?
# -o = Is the file owned by the effective user ID?
# -p = Is the file a named pipe?
# -r = Is the file readable by the effective user or group ID?
# -s = Returns the size of the file, zero size = empty file.
# -t = Is the filehandle opened by a TTY (terminal)?
# -u = Does the file have the setuid bit set?
# -w = Is the file writable by the effective user or group ID?
# -x = Is the file executable by the effective user or group ID?
# -z = Is the file size zero?
