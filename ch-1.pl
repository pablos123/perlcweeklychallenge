use warnings;
use strict;

my @UGLYnums = ();

my $an = 0;
my $flag = 1;

do {
	$an++;
	my $s = `factor $an`; 
	$s =~ s/^\d+: ?|\n//g;
	my @af = split(/ /, $s);
	$_ > 5 ? $flag = 0 : next foreach @af;
	$flag ? push @UGLYnums, $an : 0;
	$flag = 1;
	
} while(scalar @UGLYnums < 50);

print join(',', @UGLYnums);

