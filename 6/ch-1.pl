use strict;
use warnings;

my @numbers = sort { $a <=> $b } split(/\s*,\s*/, $ARGV[0]);
my @array;
my $first = $numbers[0];
my $last = $numbers[0];

print "$_\n" foreach @numbers;

my $numbers = join '', @numbers;
for(my $i = 0; $i < scalar @numbers; $i++) {
	$numbers =~ //;
	if ($numbers[$i] == --$numbers[$i]) {
		$first = $numbers[$i];
	}
	
	else {
		$last = $numbers[$i];
		push @array, "$first-$last";
	}

	print @array;

}
