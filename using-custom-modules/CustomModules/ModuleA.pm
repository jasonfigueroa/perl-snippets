package ModuleA;

use strict;

use Exporter qw(import);
our @EXPORT_OK = qw(ModuleASubroutine);

sub ModuleASubroutine {
    print "Using Module A subroutine ...\n";
}

1;