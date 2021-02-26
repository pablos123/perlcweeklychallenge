#Print all the niven numbers from 0 to 50 inclusive, each on their own line. i
#A niven number is a non-negative number that is divisible by the sum of its digits.

use strict;
use warnings;

sub weight {
	my $result = shift;
	my $number = shift;
	my @digits = split //, $number;
	return $result += shift @digits if scalar @digits == 1;
	return weight($result += shift @digits,  join('', @digits));
}



foreach(1 .. 50) {
	print $_ . "\n" if($_ % weight(0, $_) == 0);
}


