use warnings;
use strict;
my @arg = split(//, $ARGV[0]);

for (my $j = 0; $j < @arg; $j++) {
	my @newanag = @arg;
	for (my $i = $j; $i < @arg; $i++) {
		#$newanag[$i+1] = $arg[$i-1] if $i + 1 < @arg && $i > 0;
		$newanag[$i] = $arg[$j];
		$newanag[$i-1] = $arg[$i] if $i > 0;
		$newanag[$i+1] = $arg[$j+2] if $i+2 < @arg;
		print @newanag, "\n";
	}
}

print /(ab)*/;
#cow
#ocw
#owc
#wcw
#cwo
#wco

