use strict; 

# Declare variables
my $lunch;
my $option;
my $name;
my $reversedname;
#sprinf example:
my $someValues = sprintf "%3d-%02d::%1d", 22,21,23;

# Greeting
print ("Hello and wellcome to my shop, What is your name? \n"); 
$name = <STDIN>; 

#what would the user like for lunch?
chomp $name; 
$reversedname = reverse $name; #note the reverse keyword to reverse a string
print ("Hello , $name. your name backwards is $reversedname. What would you like for lunch? (Burger/Steak) \n"); 

$lunch = <>; # <> is shorthand for <STDIN>
chomp $lunch;   # remove the newline character from the end of the string.

# Checking for the user's lunch choice.
if ($lunch eq "Burger"){
	print("Would you like frieds with that?\n");
}
elsif ($lunch eq "Steak"){
	print("How would you like that done, sir?\n")
}
else{
	print ("Hmmmm? are you sure?")
}

#option Value
$option = <>;

#check for nulls
 #note you can use unless to replace if (!conidtion){}
  #logical operators can also used "and (&&)", "or(||)" 
if (!$lunch || !$name || !$option){ #Empty scalar variables can be used as bolean data types.
    print "You left something out \n";
}

#Printing techniques
 #note the different uses for '' and "
  #note that strings using "" can use the escape character / as '' cannot
print ("One order for $name, $lunch with option: $option");
 #Method 1
print "variable name\'s: \n";
print '$name: '; 
print "$name"; 
 #Method 2
print " \$lunch: $lunch  \$option: $option"; 
 #Method 3 
printf "Formatted saclar strings, %s , examples by %s", $lunch , $name;
#Currency format 
printf "\nThat will be R %.2f", 120/2; #any equation
print "\nSerial:$someValues \n";

#Math Statment Block
{
    #loops: for, while, do while, until, foreach
    for ( my $i = 0; $i <= 3; $i++)
	{
		#number manipulation 
		my $a = 5; 
		my $b = 10; 
		my $c = 11.90; 
        
		#Ternary Operator (shorthand if,then,else statment)
	    $a != 1 ? print "Number is equal to one." : "Number is not equal no one.";
		
		#adding numbers 
		  #note the dot(.) is a concatination character 
		   #note the compact if statment at the end. the unless command can also use compact notation.
		print"$a + $b + $c = " . ($a + $b + $c) if ( $a + $b + $c < 200);
	}
	
	 #Note the .. to tell the interpreter to go through each consecitive number.
	my @array = (1..10); 
	
	#Read through and print the array using the foreach loop.
	 #Method 1
	foreach my $item (@array) {
	print $item . "\n";
	}
	
	 #Method 2 
	foreach (@array) {
	print; # or print $_;
	}
	
}



