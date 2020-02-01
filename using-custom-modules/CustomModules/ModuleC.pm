package ModuleC;

use strict;

use Exporter qw(import);
our @EXPORT_OK = qw(ModuleCSubroutine);

sub ModuleCSubroutine {
    print "Using Module A subroutine ...\n";
}

1;