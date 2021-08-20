
#! DIR_HANDLE is same as FILE_HANDLE;
#! see 10_file.pl to understand more

# get all files in a directory

$dir = "mocks/*";
my @files = glob($dir) or die "can't get files, $!";

foreach $f (@files) {
   print "$f \n"
}

# all of this loops will works
# foreach (@files) {
#    print "$_ \n" # "$_" gets the current value of the loop, its a special variable
# }
# for($i = 0; $i < scalar(@files); $i++) {
#    print "$files[$i] \n"
# }


# open dir
# opendir DIR_HANDLE, PATH
opendir (currDir, '.') or die "Couldn't open directory, $!";
# DIR now points to the current directory

# make directory
mkdir("test_dir") or die "Couldn't create the dir, $!";

# remove directory
rmdir("test_dir") or die "Couldn't remove the dir, $!";


# This changes perl directory  and moves you inside /home directory.
# $dir = "..";
# chdir( $dir ) or die "Couldn't go inside $dir directory, $!";
# print "Your new location is $dir\n";
