use strict; 

print "Compare two values, first value:\n";
my $firstval = <>; 
print "\nSeccond Value:\n"; 
my $seccondvalue = <>; 

my $biggerVal = &max($firstval , $seccondvalue); 

print "The bigger value is $biggerVal";
sub max () {
 if (@_[0] > @_[1])
 {
  return @_[0];
 }
 else
 {
 return @_[1];
 }
}