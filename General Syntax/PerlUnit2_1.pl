#Pragmas (Used to give instructions to the complier)
use strict; 

#Main()
{
	#Calling function and storing a return value
	my $Value = &myFunction("paramOne", "\nSubroutine Execution Sucessful!"); 
	print $Value;
	
	#STRING FUNCTIONS 
	 #locate where a string is using the index function. Will return -1 if not found.
		#First occurance use INDEX
		my $position = index("This is my string", "my" , 4); #starting point
		print ("\nFirst position: " . $position);
		#Last occuranceuse RINDEX 
		my $lastposition = index ("This is a new funny long ass string" , "funny"); 
		print "\nLast position: " . $lastposition;
	    
	  #Sub-string grabbing a sub-string using an index 		
	   #Leave out the third paramater if you want the reminder of the string
	    #Note the - indicates that the complier must start cound at the end of the string.
	  my $someString = substr("Here is a regular string." , -15 , 10);
	  print "\nIndex Example:" . $someString;
	  
	  #To Replace part of a string 
	  my $ReplacedString = "I like chocolate Perl"; 
	  substr($ReplacedString, 2 , 5 , "Love "); 
	  print "\nReplaced String: " . $ReplacedString;
	  
	  #Sorting Function 
	  &SortFunction();
}

#Function
sub myFunction(){
    
	#Acessing the paramater list
	 #Method 1
	 my ($ReturnVal, $ReturnValTwo) = @_; 
	 #Method 2 
	 $ReturnVal = $_[0];
	 
	#Eval (Try/Catch the statments .. Eval/if)
	eval {
	 print "\nNo error has ocurred";
	};
	if ($@){
	 print "\nA fatal error ocurred.";
	 #Close the program.
	 exit
	}
	
    #Will return undef if no value is assigned.
	return "\nSubroutine has been called! \n". $ReturnVal . "\n" . $ReturnValTwo;
}

#Function used to sort values
sub SortFunction() {
     
	my @greekMethology = ("Zues", "Athena", "Airies", "Appolo", "Hades");
	my @Numbers = (2,1,32,43,5,23,5,34,23,32);

	#Note sort , sorts out values according to thier ACSII value and not the numerical value
	 #Call a subroutine that changes all values to lowercase.
	my @SortedMethology = sort case_insensitive @greekMethology; 
	#Will not appear in numerical ordor.
	my @SortedNumbers = sort @Numbers; 
	#Will appear in numberical order 
	 #Note the use of the space ship operator (<=>)
    my @NumbericalSortedNumbers = sort {$a <=> $b} @Numbers; 
	
	print "\nSorted greek gods: @SortedMethology \nSorted ASCII Numbers: @SortedNumbers \nSorted Numberically: @NumbericalSortedNumbers";
}

#CaseInsensitive subroutine 
 #Changes the upper case to lower case before a sort occures however does not change the actual value.
sub case_insensitive { "\L$a" cmp "\L$b" }; 