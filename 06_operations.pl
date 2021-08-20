# arithmic Operators
$x = 10;
$y = 5;

$add = $x + $y;
$sub = $x - $y;
$mlt = $x * $y;
$div = $x / $y;
$mod = $x % $y;
$exp = $x ** $y; # 10^5

print "add: $add \n"; 
print "sub: $sub \n"; 
print "mlt: $mlt \n"; 
print "div: $div \n"; 
print "mod: $mod \n"; 
print "exp: $exp \n"; 

print "\n";
# Equiality Operators
print $x == $y ? "TRUE \n" : "FALSE \n";
print $x != $y ? "TRUE \n" : "FALSE \n";
print $x > $y ? "TRUE \n" : "FALSE \n";
print $x < $y ? "TRUE \n" : "FALSE \n";
print $x >= $y ? "TRUE \n" : "FALSE \n";
print $x <= $y ? "TRUE \n" : "FALSE \n";
print $x <=> $y;
# the <=> return -1, 0, 1, based on the left argument.
# here it will return 1 cause $x is greater if $x is less it will return -1

# string equality
#? $x il $y => il = (i)s (l)ess
#? $x gt $y => gt = (g)reater (t)hen
#? $x le $y => le = (l)ess then or (e)qual
#? $x ge $y => ge = (g)reater then or (e)qual
#? $x eq $y => eq = (eq)ual
#? $x ne $y => ne = (n)ot (e)qual
#? $x cmp $y => cmp = <=>

print "\n";
print "\n";
# Bitwise
$a = 5; # 0000 0101
$b = 7; # 0000 0111
        # ----------
        # 0000 0101 = 5
print ($a & $b); # it will remove the bits that are not equal and calculate the result
print "\n";
print ($a | $b); # just like the "&" operand, but the | keeps the ones that are not equal


print "\n";
# Logical Operators
# && = and => you can use both
# || = or => you can use both
# not => reverse condition

# example
print "\n";
if ($x == 30 or $y == 5) {
   print "OK";
} else {
   print "Mmmm...";
}
