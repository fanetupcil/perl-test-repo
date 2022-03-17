use strict;
use warnings;

use LWP::Simple; ## library for get and getstore
$|=1;  ## turn off output buffering
# html2();

sub main
{
	print ("hello world \n");
}

################### tutorial2 download file

sub html2{
print "downloading...\n";
##	print get("https://caveofprogramming.com/");
##  getstore("https://caveofprogramming.com/", "home.html"); # get html store in home
my $code = getstore('https://process.fs.teachablecdn.com/ADNupMnWyR7kCWRvm76Laz/resize=width:705/https://www.filepicker.io/api/file/i8hvbH3bRkK6fpKS0hxG', "img.jpg");
if($code == 200){
	print "succees \n";
}
else {
print "failed \n";
}

	print "finished \n";


}

############# tutorial3 check file exists

#array();
sub array {
	my @files = (
	'img.jpg',
	'home.html',
	'homee.html',
	);
	my $file = 'img.jpg';

for(@files){

	if(-f $_){
		print "file found $_ \n";
	}
	else {
		print "file not found: $_ \n";
	}

}
}


##tutorial4 reading files in perl
sub download{
	getstore('https://www.gutenberg.org/files/84/84-0.txt', 'file.txt');
}

 #   RFiles();   ####

sub RFiles{
## download();
my $file ='file.txt';
my $chr='abe';
open(INPUT, $file) or die "Input file $file not found  \n"; # \n nu mai arata linia
while(my $line = <INPUT>){ #<INPUT> reads the line from the file
 if($line =~ /[$chr]egg/i ){
	 print $line;
 }
}

close INPUT;

}

######tutorial6 file writing
#writing();
sub writing{

#my $output = '>output.txt'; # characterul > spune sa creeze caracterul;
my $output = 'output.txt';
open(OUTPUT, '>'.$output) or die "can't create $output. \n"; # am concatenat > aici direct
print OUTPUT "hello\n"; # foloseste file handle sa printeze in fisier
close (OUTPUT);

}


######### REPLACE

# replace();
sub replace{
	use constant {
        input =>"file.txt",
		output => "output.txt",
	};
open (OUTPUT, '>'.output) or die "can't create ",output;

open(INPUT, input) or die "can't open input", input;

while(my $line = <INPUT>){
	if($line =~ s/egg/###/){ # /\begg\b/ egg with a boundary ., white space

print OUTPUT $line;
	}
}
print "Succes\n";
close(OUTPUT);close(INPUT);
}

## wildcards tutorial 7 amd 8
sub replace2{
	use constant {
		input =>"file.txt",
		output => "output.txt",
	};

open(INPUT, input) or die "can't open input", input;

while(my $line = <INPUT>){
	if($line =~ /(I.ha[dv])/){ # . e wildcard , da match la orice caracter
print $1; # trebuie sa fie parantezele puse, nr de paranteze -> groups nr de $1, $2$3
print  $line;
	}
}
print "Succes\n";
close(INPUT);
}
 ## replace2();


 ## tutorial 9

 sub replace3{
	use constant {
		input =>"file.txt",
		output => "output.txt",
	};

open(INPUT, input) or die "can't open input", input;

while(my $line = <INPUT>){

#   if($line =~ /(l+)/){
	if($line =~ /(so.*?n)/){ # zero or more 'o' , star -> zero or more proceding characters;
							# "*" e GREEDY, da match la cat mai multe caractere
							# "*?" nu mai e greedy , da match la cat mai putin posibil
print "$1\n";
	}
}
print "Succes\n";
close(INPUT);
}
#replace3();

## escape seq

sub escape{
	# \d digit match
	# \s space match
	# \S non space
	# \w alpha numeric including underscore

	my $text = 'I am   117 years old tomorrow 1178';

	if($text =~ /(\s*\d+)/){ # + e greedy , 1 sau mai multe de 1
							# \s merge si la space :)
		print "Matched $1 \n";
	}else {
		print "fail";
	};


}
##  escape();

##### numeric quantifiers

sub numericQ{
my $text = 'DE$531546';

if($text =~ /(DE\$\d{3,})/){ # at least 3 , no more than 5 , 5 could be omitted
							# if a charater is special %#@$^ use \
		print "Matched $1 \n";
	};


}
#numericQ();


