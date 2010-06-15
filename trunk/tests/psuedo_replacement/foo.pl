#!/usr/bin/perl -w

use strict;

my $in;
my $other;
foreach my $file (@ARGV) {
  if ($file =~ /\.adl$/) {
    $in = $file;
  }
  elsif ($file =~ /\.h$/) {
    $other = $file;
  }
}

$other =~ s/C\.h$/.adl/;
if ($in ne $other) {
  print "MPC has not generated the correct output.\n";
  exit(1);
}

my $header = $in;
$header =~ s/\.adl$/.h/;
my $source = $in;
$source =~ s/\.adl$/.cpp/;

open(FH, ">$header");
close(FH);

open(FH, ">$source");
close(FH);
