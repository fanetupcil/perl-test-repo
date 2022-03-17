#!/usr/bin/perl
use strict;
use warnings;

print "Hello world\n";

my $number = 10;
my $stringy = " Second string \n";
print $number;
print "\n My string is $stringy ", $stringy, "\n";

## arrays
my $i = 0;
my @animals = ("zzzzz","camel", "llama","owl");
# $#animals -> returns the last index
    print $animals[$#animals],"\n";

my @numbers = (1,2,3,4,5);
my @it = (0..4);
for my $i (@it){
    print "$numbers[$i]"."\n";
}

my @sorted = sort @animals;
my @backwards = reverse @numbers;

print(@sorted);

for  (@it){
    print "$backwards[$_] "."\n";
}


my %fruitcolor = (
    apple => "red",
    banana =>"yellow",
);

print $fruitcolor{apple}, "\n";

my $var = {
    scalar => {
        description => "single item",
        sigil => '$',
    },

    array => {
        description => "array list",
        sigil =>'@',
    },

    hash => {
        description => "key/value pairs",
        sigil => '%',
    },
};
print "\n";
print $var->{'scalar'}->{description},"\n";

my $bol = 1;
print "wow" if $bol, "\n";
#print "hey hey , a venit tequila" while 1;
