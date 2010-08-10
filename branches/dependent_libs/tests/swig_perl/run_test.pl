#!/usr/bin/perl -w

use strict;
use MyModule;

my $p = 11;
my $hello = new MyModule::Hello();
$hello->zzz(\$p);
$hello->hello(\$p);

my $hf = new MyModule::HelloFactory();
my $hello2 = $hf->createHello(\$p);
$hello2->hello(\$p);

exit(0);
