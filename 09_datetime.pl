# perl has a built in functions for getting date and time

# get local datetime (which is on your machine)
$dt = localtime();
print "Local: $dt";

print "\n";
# get the universal GMT datetime
$gmt = gmtime();
print "GMT: $gmt";

print "\n";

# time() returns the numbers of seconds that have elapsed since a given date, (every OS has a date)
# in UNIX its 1 jan 1970
$epoc = time() - 24 * 60 * 60;
print $epoc;
print "\n";
$yd = localtime($epoc); # gmtime also accepts a param
print "Yesterday: $yd";
