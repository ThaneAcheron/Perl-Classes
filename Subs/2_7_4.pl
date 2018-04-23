use strict; 

$_ = "Red lorry, Yellow lorry.Robert rows in regattas regularly.";
s/r/w/g;
print $_;

#OR 

my $val = "\nRed lorry, Yellow lorry.Robert rows in regattas regularly.";
$val =~ s/r/w/g;
print $val;
