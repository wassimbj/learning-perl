$a = 30;
$b = 33;

if($a > $b) {
   print "a wins";
} else {
   print "b wins";
}
print "\n";
# other approach, just like in javascript
$x = $a > $b ? "a WINS" : "b WINS";

print $x;

print "\n";
# else if (elsif)
if ($a == 30) {
   print "a is good"
} elsif ($a == 33) {
   print "b is good"
} else {
   print "a is not good"
}
