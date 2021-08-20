#? reference = pointers in C

$x = 10;

$p = \$x; # p now points to x

$$p = 3; # changing value of p also changes the value of x

print $x;


@arr = (1..10);

# now p has the adress of @arr
$p = \@arr;
print @$p;

#* other types pointing syntax
# $hash   = \%ENV;
# $function   = \&handler;
