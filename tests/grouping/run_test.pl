#!/usr/bin/perl -w

use strict;

my($status) = 0;
foreach my $file ('A'..'F') {
  $status += system("source/$file");
}

exit($status);

