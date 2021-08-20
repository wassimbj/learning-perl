print "\n ------ Special Literals ------ \n";

# __FILE__ = current file name 
# __LINE__ = line where this special literal is called 
# __PACKAGE__ = package name of the program
print "File name: ". __FILE__ . "\n";
print "Line Number: " . __LINE__ ."\n";
print "Package: " . __PACKAGE__ ."\n";
