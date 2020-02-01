package ModuleB;

use strict;

use Exporter qw(import);
our @EXPORT_OK = qw(ModuleBSubroutine);

sub ModuleBSubroutine {
    print "Using Module B subroutine ...\n";
}

1;