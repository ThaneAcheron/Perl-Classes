use strict;

my %marks; 
$marks{'Advacnedc#'} = '80'; 
$marks{'Hardware'} = '77'; 
$marks{'Web Devlopment'} = '60'; 

print "Advanced C#: " . $marks{'Advacnedc#'} . "\nHardware: " . $marks{'Hardware'} . "\nWeb Devlopment: " . $marks{'Web Devlopment'};
print "\nEven numbers: \n";

my @big_numbers = grep { $_ % 2 == 0 && !/H/ && !/A/ && !/W/ } %marks;

foreach (@big_numbers)
{
 print "\n" . $_;
}