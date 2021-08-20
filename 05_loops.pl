
# while loop
$i = 0;
while($i < 5) {
   print "$i ";
   $i++;
}


print "\n";
# until (like pascal)
# its like telling repeat this until a condition is fulfilled
$j = 5;
until ($j < 1) {
   print "$j ";
   $j--;
}

print "\n";
# for loop, C like syntax
for($i = 0; $i < 10; $i++) {
   print "$i "
}

# foreach loop
@list = (10..20);

print "\n";

# foreach loop execution
# plain english: foreach $x in @list
foreach $a (@list) {
   print "$a ";
}


# there is another loop, do{...}while(condition)
# do {
#  you code...
# } while(condition)
