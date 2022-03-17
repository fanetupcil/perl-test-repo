use strict;
use warnings;
$|=1 ;

## array of strings , loop display , valid email if at least 3 alpha numeric character , followed by an @ sign followed by oone more followed by dot and another char

sub main{
my @emails = (
	'fane@yahoo.com',
 	'stef@yahoo.com',
	 'invalid.stop',
	 'nico@yahoo.com',
 	'nico.gmail.@com.',
 );
for my $email(@emails){
	if($email =~ /(\w{3,}\@\w+\.\w)/){
		print " valid email $email \n";
	}else {
		print " invalid : $email \n"
	};
}


}

#main();

sub main2{
my $text = 'The code for this device is GP1234.asdasdasd.is asdasd.asda.';
#2 alphanumeric , 4 digits;
if( $text =~ /(\w{2}\d{4})/){
	print "$1 \n"
}

if( $text =~ /is\s(\S+?)\./){
	print "$1 \n"
}


}

main2();