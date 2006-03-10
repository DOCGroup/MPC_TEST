#!/usr/bin/perl -w

use strict;
use Config;

my($dir)  = 'source';
my($file) = 'main_test' . $Config{'exe_ext'};
my($exe)  = (-x "$dir/Release/$file" ? "$dir/Release/$file" : "$dir/$file");

exit(system($exe));
