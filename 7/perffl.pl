use strict;
use warnings;
use Data::Dumper;

sub foo {
	my %hash = (
		k1 => [1,2,3],
		k2 => [4,5,6]
	);

	#exists $hash{k1} ? push @{ $hash{k1} }, 8 : ($hash{k1} = [8]);
	$hash{k1} = [] if !exists $hash{k1};
	push @{ $hash{k1} }, 8;


	print Dumper(%hash);
}


foo();
