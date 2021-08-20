#* Scalar = simply a variable
# variables starts with a "$"
$varname = "this is var value";
print "\n ------ Scalar (vars) ------ \n";
print $varname;
print "\nBetween Quotes: $varname"; # you can wrap the var between quotes
print "\n";
print $varname . " Concat \n"; # use dot "." to concatenate stuff

$x = 344;

print $x;

#! you can assign floats, numbers, strings, hex values to the variable.

#* Multi-line text
# to store or print multi-line text use single quotes

$mlt = '
   Hello this is 
   a multi-line
   text...
';
print $mlt; 

# you can also use this syntax.

$amlt = <<EOF;
   \n
   Put whatever here
   this another mutli-line text.
EOF

print $amlt;
