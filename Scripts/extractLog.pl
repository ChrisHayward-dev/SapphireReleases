#!/bin/perl
#  extract LOG file block from miniseed and output in a readable format
#
#
#
$lineN = 0;
while ($ARGV = shift) {
	open(ARGV,$ARGV)||warn "Couldn't open $ARGV";
	while(read(ARGV,$buf,512)>0) {
	  @log = unpack("x15 A3 x2 x10 S x24 a456",$buf);
	  if ($log[0]=~/LOG/) {
		  @text = split(undef,$log[2]);
		  $line[$lineN] = join(//,@text[0..$log[1]-1]);
		  $lineN++;
	  }
  }
  }
  $lines = join(//,@line);
  $lines =~ s/}{/}\n\{/g;
  $lines =~ s/\000//g;
  print "$lines";
