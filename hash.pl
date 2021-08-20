print "\n ------ Hash ------ \n";
# init a hash with a "%" and access it with a "$"

%myhash = (
   "key1" => "val1",
   "key2" => "val2",
   "key3" => "val3"
);

# this also works
# %myhash = (
#    "key1", "val1",
#    "key2", "val2",
#    "key3", "val3"
# );

# %myhash = (
#    -key1, "val1",
#    -key2, "val2",
#    -key3, "val3"
# );
# notice how we added "-" before the keys and removed the quotes
# how to access it: $myhash{-key1};

print $myhash{"key1"};

print "\n";

# Slices
@arr = @myhash{"key2", "key3"};
print "@arr \n";

print "\n";
# Get keys and values
@kz = keys %myhash;
print "@kz \n";

@vlz = values %myhash;
print "@vlz \n";

# check if item exists
# exists($myhash{"key1"})


print "\n";
# Add and Remove Elements in Hashes
%users = (
   "wassim" => 100,
   "asma" => 300,
   "leila" => 10000,
);

# Add
$users{"test"} = 20;

@ukz = keys %users;
print "@ukz \n";

# Delete
delete $users{"test"};

@ukz = keys %users;
print "@ukz \n";
