use strict; 

my %Vals = ("820716500099990" => "Kevin", "834716500099990" => "Craig", "332716500099990" => "anthea", "134716500099990" => "phillip"); 
my @names; 
my @IDs; 
my @SortedIDs;
my $key;
my $increment = 0;

foreach $key (keys %Vals){

	#Store the IDs
	@IDs[$increment] = $key . "\n";
	#Store the names
	@names[$increment] = @Vals{$key} . "\n";
	$increment = $increment + 1;

}

#sort the names and IDs
@names = sort case_insensitive @names;
@SortedIDs = sort {$a <=> $b} @IDs;

#print 
print @SortedIDs;
print @names;

#Sub to use case-insensitive with sorting.
sub case_insensitive { "\L$a" cmp "\L$b" }; 