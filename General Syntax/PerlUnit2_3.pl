#This is an example of list-slicing (using splice and indexing to save a string to a local variable.)
while(<>) { 
$cheese_name = (split /-/) [0]; 
$cheese_price = (split /-/) [4]; 
 #or  
($cheese_colour, $cheese_country) = (split /-/)[1,2]; 

print "\nCheese name: $cheese_name"; 
print "\nCheese Price:  $cheese_price"; 
print "\nCheese Colour: $cheese_colour"; 
print "\nCheese Country: $cheese_country";
}

#Array slice 

%myhash = ("apple" => "red", "orange" => "orange", "bananna" => "yellow", "plum"=> "purple"); 
@colour = @myhash {qw/apple plum bananna/}; 

print "\n@colour";
