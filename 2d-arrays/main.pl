use Data::Dumper;

use strict;

sub main {
    my @colors = ();

    my @colorsRowOne = qw(blue green orange);
    my @colorsRowTwo = qw(red purple white);
    my @colorsRowThree = qw(beige black grey);

    push(@colors, \@colorsRowOne);
    push(@colors, \@colorsRowTwo);
    push(@colors, \@colorsRowThree);

    @colors = Append1ToAllValues(\@colors);
    
    print Dumper @colors;
}

# Any manipulation to the array here will not affect the array in main
sub Append1ToAllValues {
    
    my $TwoDArrayRef = shift;
    my @TwoDArray = @{$TwoDArrayRef};

    my $lengthOfTwoDArray = scalar @TwoDArray;
    for (my $i = 0; $i < $lengthOfTwoDArray; $i++) {
        
        # creating copy of array for simplicity
        my @currentArray = @{$TwoDArray[$i]};
        my $lengthOfCurrentArray = scalar @currentArray;

        for (my $j = 0; $j < $lengthOfCurrentArray; $j++) {
            my $currentValue = $currentArray[$j];
            $TwoDArray[$i][$j] = $currentValue . 1;
        }
    }
    
    return @TwoDArray;
}

main();