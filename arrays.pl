print "\n ------ Array ------ \n";

@list = ("val1", "val2", "val3");
# arrarys starts with "@"

print "@list[0]\n";
print "@list[1]\n";
print "@list[2]\n";

print "\n";

@list2 = qw/This is an array/;
# the keyword "qw" creates an array based on the string given, array elements are separated with a white space

print "@list2[1]\n"; # this
print "@list2[0]\n"; # is
print "@list2[2]\n"; # an
print "@list2[3]\n"; # array
print "@list2[-1]\n"; # array

print "\n";
#  Ranges
@var_10 = (1..10);
@var_abc = (a..z);

print "@var_10\n";   # Prints number from 1 to 10
print "@var_abc\n";   # Prints chars from a to z


# How to get array size ?
# there is 3 ways to get the array size
# 1)
print scalar @list2; # scalar @arrayName

print "\n";

# 2)
$arrSize = @list2;
print $arrSize;

print "\n";

# 3)
$maxIndex = $#list2; # this gives us the last index of the array element, means its (arraySize - 1)
print $maxIndex + 1;
print "\n";

#! BUILT-IN FUNCTIONS

# create a simple array
@coins = ("Quarter","Dime","Nickel");
#! NOTE: if you want to skip the parser use "\"
print "1. \@coins  = @coins\n";

# add one element at the end of the array
push(@coins, "Penny");
print "2. \@coins  = @coins\n";

# add one element at the beginning of the array
unshift(@coins, "Dollar");
print "3. \@coins  = @coins\n";

# remove one element from the last of the array.
pop(@coins);
print "4. \@coins  = @coins\n";

# remove one element from the beginning of the array.
shift(@coins);
print "5. \@coins  = @coins\n";


# slice an array
@days = qw/Mon Tue Wed Thu Fri Sat Sun/;

@weekend = @days[5,6];
# @weekend = @days[5..6]; # also works, range from 5 to 6

print "Slice: @weekend\n";

# there is also a splice function
# splice (@ARRAY, OFFSET [ , LENGTH [ , LIST ] ])
#! items will be replaced with LIST, if you specify it
print "\n";
@nums = (1..10);
print splice(@nums, 3, 6, "Replacer");

print "\n";
# String to array
$var_names = "Larry,David,Roger,Ken,Michael,Tom";
# split(SPERATOR, @ARRAY)
@names  = split(',', $var_names);

print "@names \n";

print "\n";
# Array to string
# join(SPERATOR, @ARRAY)
$str = join(" - ", @names);
print $str;

print "\n";
# Sort an array
# sort([SUBROUTINE], @ARRAY)
# SUBROUTINE = additional elements
@sorted = sort("Wassim", @names);
print "@sorted \n";


print "\n";
# Merge arrays
# just put them inside ()
@mrg = (@names, @days);
print "@mrg \n";


# The $[ Special Variable
# this var gives you the first index of array which obviously ZERO, you set it to change the first index of an array
# but you shouldn't
# $[ = 1
