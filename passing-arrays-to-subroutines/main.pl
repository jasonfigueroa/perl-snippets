use Data::Dumper;

use strict;

sub main {

    my @colors = qw(blue green orange);

    @colors = ChangeSecondColor(\@colors);
    
    print Dumper @colors;
}

# Any manipulation to the array here will not affect the array in main, that 
# is why we return it here
sub ChangeSecondColor {
    
    # getting reference to array
    my $strArrayRef = shift;

    # capturing array
    my @strArray = @{$strArrayRef};

    $strArray[1] = "pink";

    return @strArray;
}

main();