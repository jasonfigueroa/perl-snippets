#!/usr/bin/perl

use strict;
use lib './CustomModules';

use ModuleA qw(ModuleASubroutine);
use ModuleB qw(ModuleBSubroutine);
use ModuleC qw(ModuleCSubroutine);
sub main {
    ModuleASubroutine();
    ModuleBSubroutine();
    ModuleCSubroutine();
}

main();