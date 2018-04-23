#Declare a varabile, note qw is shorthand for defining strings
 #Note how you can declare an @array and can use a $scalar[index] datatype to acess its elements.
my @menu = qw(burger steak sandwich apple);

print("Wellcome to my restaurant. Tell me your name. "); 

my $name = <>; 
chomp $name; 

#Labeling loops that can be referenced within the loop / nested loops use next/redo/last
FIRSTLOOP: for (my $i; $i <= $#menu; $i++)
{
print ("Menu option " . ($i+1) . " : $menu[$i]\n");
}

print "Wellcome $name , what would you like for lunch?  ";
my $lunchOption = <>; 
chomp $lunchOption; 
 
#Note how the if condition is using the null value as a boolean datatype to determain the outcome.
if (my $lunch =$menu[$lunchOption -1]){
    print "Order recieved from $name for $lunch. \n";
 } else {
    print "Error! Wrong Number!"
 }