#Write a script that computes the first five perfect numbers. A perfect number is an 
#integer that is the sum of its positive proper divisors (all divisors except itself)

use strict;
use warnings;

if (0)
{#very very bad performance solution
my $perfectcounter = 0;
my $n = 2;
my $sum = 0;

while($perfectcounter < 5) {
	for my $an (1 .. ($n - 1)) {
		$sum += $an if ($n % $an == 0);
	}
	#	print "number: $n, sum: $sum";
	if($sum == $n) {
		++$perfectcounter; 	
	}
	$n++;
	$sum = 0;
}
}

{#better solution using more math (Merrsene primes)
	
sub main {
	my $primesref = getmersenneprimes(5);
	print @$primesref;
}


sub getmersenneprimes {
	my $count = shift;
	my @merprimes;
	my $p = 2;
	while (scalar @merprimes < $count) {
		my $power = 2**$p - 1;
		my $factors = `factor $power`;
	        $factors =~ /.*: /;
		chomp($');
		push @merprimes, $' if $' == $power;
		$p++;
	}
	return \@merprimes;
}

}

