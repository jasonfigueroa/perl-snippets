use Data::Dumper;

use strict;

sub main {

    my @colors = qw(blue green orange);

    @colors = ChangeSecondColor(\@colors);
    
    print Dumper @colors;
}

sub ChangeSecondColor {
    
    # getting reference to array
    my $strArrayRef = shift;

    # creating a local copy of the array
    my @strArray = @{$strArrayRef};

    $strArray[1] = "pink";

    return @strArray;
}

main();