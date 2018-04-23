use strict; 

my @arrayList = qw(Quantum Computer Airoplane Car Bike);

foreach (@arrayList)
{
 print $_ . "\n"; 
}

print  "Old Length: " . scalar @arrayList . "\n";
@arrayList = @arrayList[0..3];
print  "New Length: " . scalar @arrayList . "\n";

printf ("Element " . scalar @arrayList ." : " . @arrayList[3]);

