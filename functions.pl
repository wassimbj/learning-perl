# perl uses also the name "subroutine" for functions

# decalration and calling
sub funcName {
   print "im a function";
}
# call the function
funcName();

print "\n";

# but how to pass and get arguments ?
# you can pass any number and any type of args to the function and get them as a list
# with the "@_" special list
sub fullName {
   @args = @_;

   return @args[0] . " " . @args[1];
}

print fullName("wassim", "ben jdida");

print "\n";
# scoped variables
# using the "my" keyword you can create a local variable
my $age = 20;

# this won't change anything :)
sub changeAge {
   my $age = 21;
}

print "Before: $age \n";
changeAge();
print "After: $age";
# if i remove the "my" keyword the variable will change

print "\n";
# get number of arguments
# call scalar function to get the length of args
sub argsLen {
   $total = scalar(@_);
   print "Total arg: $total";
}

argsLen(1, 2, 3, 4, 5)

#! List of built in functions with examples:
#! [https://www.tutorialspoint.com/perl/perl_function_references.htm]
