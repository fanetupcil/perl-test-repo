use strict;
use warnings;

use constant {
	input => "file.txt",
	output => "output.txt",
	findWord => "egg",
	replaceWord => "###"
};

sub replace{
open(INPUT, input) or die "cannot open the file ".input;
open (OUTPUT,'>'.output) or die "cannot create file ".output;

while (my $line = <INPUT>){
							if ($line =~ s/(${\findWord})/${\replaceWord}/ig){ ## i case insesitive
		print OUTPUT $line;
	#	print "$line \n";
		print "$1\n";



	}
}

close(OUTPUT);close(INPUT);
print "succes\n";

}

replace();
#unlink ('replace.pl');  ## sterge fisierul
## FOLOSESTI ${\Const} in expresii regex daca vrei sa folosesti constante