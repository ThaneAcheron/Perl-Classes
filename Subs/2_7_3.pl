use strict;

my @testString = ("ABACEFABACEF a", "ABEEFFABEEFF b" , "011011011011 1" , "AFEEFEAFEEFE a");

foreach (@testString){
	if($_ =~ /\b([A-F]{6}|[01]{6}).*(\1) \b/){
	 print "\nIt matched";
	}
}