use strict;
use warnings;

sub in1 {
	my $element = shift;
	my $array = shift;
	foreach(@$array) {
		return 1 if $_ eq $element;
	}
	return 0;
}

sub in2 {
	my $element = shift;
	my $array = shift;
	my %arrayhash;
	foreach(@$array) {
		$arrayhash{$_} = $_;
	}
	return 1 if exists $arrayhash{$element};
}

{
my $arrayhash = [];
sub in3 {
	my $element = shift;
	my $array = shift;
	$arrayhash->{$_} = 1 for @$array;
	return 1 if exists $arrayhash{$element};
}

}

my $element = shift @ARGV;

print in2($element, \@ARGV);

my $match;

foreach(@ARGV) {
	if ($_ eq $element) {
	
	$match = $_;
	last;
	}
}
