#!/usr/bin/perl -w

use strict;
use Config;

my($dir)    = 'source';
my($status) = 0;
foreach my $file ('A'..'F') {
  $file .= $Config{'exe_ext'};
  my($exe) = (-x "$dir/Release/$file" ? "$dir/Release/$file" : "$dir/$file");
  $status += system($exe);
}

exit($status);

