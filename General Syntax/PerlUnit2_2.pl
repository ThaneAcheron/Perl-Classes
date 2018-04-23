use strict; 

 #RegEx
  #How to use a regular expression in a if statement.
   #Meta characters , the dot(.) is used as a wildcard.
 my $Val = "Hello"; 
 if ($Val =~ /.ell/)
 {
  #Case chaning functions ( \U \L \u \l \E)
  print "\UIt \Lcontains \Eell \n";
  print "Please enter any string. \n";
 }
 
 #Quantifiers
 
 my $Val2 = <STDIN>; 
 
 chomp $Val2;
 #Case insensitive (i)
 if ($Val2 =~/a*/i){
    print "Zero or many a/'s in the sentence.\n";
 }
 #Match any character, even a newline character (s)
 if ($Val2 =~/b+/s){ 
    print "One ore many B/'s in the sentence.\n";
 }
 #Multiple line matching (m)
 if ($Val2 =~/d?/m){
    print "Zero or one d's in the sentence.\n";
 }
 if ($Val2 =~/(dc)?/) {
    print "Zero or one dc, in that order, in the sentence.\n";
 }
 if ($Val2 =~/e|f/) {
    print "There is an e or f in the sentence.\n";
 }
 if ($Val2 =~/[A-Z]/)
 {
   print "Contains a capital letter.";
 }
 #Character class can use: \d (digits) , \w (words) , \s (spaces)
 if ($Val2 =~ /[\d]/)
 {
   print "Contains numbers";
 }
 #the carrot sign (^) is used to negate the value same funcation as (!).
 if ($Val2 =~ /[^\d]/)
 {
  print "Contains letters";
 }
 #Quantify 3-6 instances use {Val1,Val2}
 if ($Val2 =~ /a{3,6}/)
 {
  print "\nThere are between 3-6 a\'s in that sentence!"
 }
 #Anchors 
  #^first $last 
   #if ($Val3 =~ /^Craig/) vs if ($Val3 =~ /Craig^/)
   
#Word Boundaries.  
 #Match only full words within a string use \bVAL\b
my @pies =("apple pie", "piecies" , "apie"); 
foreach(@pies)
{
 if (/\bpie\b/){
  print "\n" . $_ ; 
  }
}

#Memory Parebtheses use () to store a matched value
 #the following stores the matched value and not the entire string
  #note the backlashing (memory reference) /Number to reference the first memory parentheses.
   #if you change 456 to 789 it will no longer match.
 $_ = "abc456def456";
 if (/([\w]{3}).*\1/){
    print "\nMemory parentheses match: " . $_ ; 
	print "\nParentheses caught: $1" #To reference the caught value use $1
 }

 #Automatic match variables, should only be used for debugging as it is resource expensive.
 my $name = "Elephant"; 
 
 if ($name =~ /ph/){
  print "\nThe begining of a string: $`";
  print "\nThe matched pattern: $&";
  print "\nEnd of the string: $'";
 }
 
 #Search and Replace made easy: 
 $_ = "I said hello to the old man, he said hello back"; 
 
 print "\nBefore search and replace: $_"; 
 #use $variable =~ s/hello/goodbye/g when referencing a variable
 s/hello/goodbye/g; #To include all instances use the g flag
 print "\nAfter the search and replace: $_";
 
 #Split and join functions 
  #The split function makes use of a regular expression followed by the string to split.
 #Split
 my @collist = split /:/ , "Light-blue:Green:Orange:Purple:Blue";
 
 foreach (@collist)
 {
  print "\n_________________________________________________\n";
  print "\n$_";
  print "\n_________________________________________________\n";
 }
 #Join 
 my $alphaVals = join ":", "k" , "l" , "p" , "parama";
 print "$alphaVals";
 