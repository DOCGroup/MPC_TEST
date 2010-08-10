#!/usr/bin/perl -w

use strict;
use Config;

my($dir)  = 'source';
my($file) = 'main_test';

foreach my $int ('Release/', '') {
  foreach my $mod ('d', '') {
    if (-x "$dir/$int$file$mod$Config{'exe_ext'}") {
      exit(system("$dir/$int$file$mod$Config{'exe_ext'}"));
    }
  }
}

print "ERROR: Unable to find the executable for $file\n";
exit(1);
