#!/usr/bin/perl

$pin_length = 300;
$name_text_size = 50;
$num_text_size = 50;
$unit = 0;
$convert = 0;
$pin_space = 100;
$LpinOffset = 0;
$RpinOffset = 0;
$pinDir = 'L';
@leftPins = ('PD','PE','PF','PG','VS');
$xposRight='-2850';
$xposLeft='2850';
$leftPins = "";
$rightPins = "";


while(<>) {
	chomp;
	my @pin = split /,/;
	# get rid of white space in pin name & quotes
	$pin[1] =~s/(\s+|")//g;
	$pin[7] =~s/"//g;
	$pin[7] =~s/\s+/\//g;
	if($pin[7] eq '') {
		$pin_name = $pin[1];
	} else {
		$pin_name = $pin[1]."-".$pin[7];
	}
	
	$pin[4]=~s/"//g;
	if($pin[4] eq 'I/O') {
		$electrical_type = "B" #bidirectional
	}elsif ($pin[4] eq 'S') {
		$electrical_type = "W" #Power IN
	}elsif ($pin[4] eq 'I') {
		$electrical_type = "I" #Input Pin
	}elsif ($pin[4] eq 'O') {
		$electrical_type = "O" #Output Pin
	}else {
		$electrical_type = "U" #unspecified
	}
	
	$pinDir='R';
	foreach (@leftPins) {
		if($pin[1]=~m/^$_/) {
			$pinDir = 'L';
			last;
		}
	}
	if ($pinDir eq 'L') {
		$leftPins .= "X ".$pin_name." ".$pin[0]." $xposLeft $LpinOffset $pin_length L $name_text_size $num_text_size 1 1 $electrical_type\n";
		$LpinOffset -= 100;
	} else {
		$rightPins .= "X ".$pin_name." ".$pin[0]." $xposRight $RpinOffset $pin_length R $name_text_size $num_text_size 1 1 $electrical_type\n";
		$RpinOffset -= 100;
	}
}

print "S ".($xposLeft-$pin_length)." ".$pin_space." ".($xposRight+$pin_length)." ".(($LpinOffset < $RpinOffset) ? $LpinOffset : $RpinOffset )." 0 1 0 N\n";
print $leftPins;
print $rightPins;
