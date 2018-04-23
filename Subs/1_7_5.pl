use strict; 

my @arrayList = (12, 64, 6, 2, 5, 78, 55, 26, 1, 0, 3);

#print every number greater than 10 using a turnary operator
foreach(@arrayList){
	$_ > 10 ? print "$_% \n" : next;		
}


#increament the first number until it is divisiable by 11 using a do while loop
do {
	print @arrayList[0] . "\n"; 
	@arrayList[0] = @arrayList[0] + 1;
} while(@arrayList[0] % 11 != 0);

#Loop to values 2 or last are equal to 40 or 23
until(@arrayList[1] == 40 || @arrayList[scalar @arrayList - 1] == 23)
{
 @arrayList[1] = @arrayList[1] -1; 
 @arrayList[scalar @arrayList - 1] = @arrayList[scalar @arrayList - 1] +1;
 
 print @arrayList[1] . "\n"  . @arrayList[scalar @arrayList - 1] . "\n";
}