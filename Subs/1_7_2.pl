use strict;

my $name; 
my $age; 
my $height; 

print "Name: ";
$name = <>; 
print "\nAge:  ";
$age = <>; 
print "\nHeight:"; 
$height = <>; 

chomp $name; 
chomp $age; 
chomp $height; 

print (reverse$name); 
printf "\nYour height/age is: %.3f%" , $age/$height; 
