# =~ => test a text against a regex and assign a value
$str = "Harry Potter"; 
if ($str =~ /rr/) {
   print "rrrrrrr";
} else {
   print "brrr";
}
# the above code will return rrrrrrr


# Replace text by another
# 1) Substitution (s/../../)
# s/EXISTING/REPLACMENT/
# EXISTING and REPLACMENT both can also be a regex, not a just text
print "\n";

$one = "Harry";
$one =~ s/r/p/g;
# g for global search
# there is some other substitution operators

print $one; # returns Happy :)

print "\n";
# 1) Translation (tr/../../)
# tr/SEARCHLIST/REPLACEMENTLIST/cds
# c = Complements SEARCHLIST
# d = Deletes found but unreplaced characters.
# s = Squashes duplicate replaced characters.

$string = 'perl is a camel.';
$string =~ tr/a-z/v/d;

print "$string";

print "\n";

$x = "(+216)00123456";

# btw i didn't copy and paste the below regex, (just learning regex)
if ($x =~ /^(\(\+\d+\))(\d+)/){
   print "Valid number"
} else {
   print "Invalid"
}

print "\n";

#! mozilla has a great regex examples and explanation
# https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions
