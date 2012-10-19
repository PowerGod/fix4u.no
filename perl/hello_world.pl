#!/usr/bin/perl
#use utf8;
# Syntax
# my = lokal rettighet til å lese variabel
# our = global rettighet til å lese variabel
# $ = variabel deklarasjon. Eksempel $navn = "";
# % = variabel deklarasjon for kompleks struktur (HASH)
# ; = Avslutning på deklarasjon. Må alltid inkluderes!
# IF = hvis
# else = ellers
# for = Løkke
# Eksempel på løkke:
#	# for ( my $teller = 0; $teller < 100; $teller++ ) {
#		# print "Teller \t\t\t\t\t= \t" . $teller;
#		# print "\n";
#	# }
# ---
# Subrutiner, funksjoner eller metoder
# sub navn_paa_funksjon {}
#
# ----
# Algebraiske operatører (thank you Arabs!)
# + = Addere
# - = subtrahere
# % = dividere
# * = multiplisere
# 

# Datatyper
# $variabel = "tekst"
# $variabel = 123
# -
# Array
# @variabel = ("tekst", 123); 
# @variabel = ("tekst", 123, ( "dimensjon 2" ) );
# 
# Referanser
# Eksempel:
# my $kunde_navn = "Snille Petter";
# my $innlogget_kunde = \$kunde_navn;
# 	Peker syntax
# 	(0x0256)
#   Peker syntax til en array
# 	ARRAY(0x0256)

#	Logiske operatør:
#	&& = AND - OG
#	|| = OR - ELLER
#	!| = dersom
#	== = LIK?
#   eq = er lik?
#   ne = ikke lik?


# Eksempel på logisk sjekk:

# 02020202
# 1 byte = 8 bits = 01010101
# 2 byte = 16 bits = 1100001010011101

# A = 1 byte
# Æ = 1 byte & 1 byte
my $bruker_navn = "Thor Helge";
# my @admin_brukere = ("Tors", "Kjell", "Jørn", ["Brukernavn", ["Torssibrukernavn", "Kjellisbrukernavn"]]);
my @admin_brukere = ("Tors", "Kjell", "Jørn");
# [
	# [
		# [0x4567][0x4568][
			# [][][]
		# ]
	# ]
	# [][][][][][][][][][][][][][]
	# ] [
	# ]
		# []
	# ]

# print "Eksempel utskrift av enkel verdi i array: ";
# print $admin_brukere[2][1][1];
# print "\n";

# if ( $bruker_navn eq "kjell" )  {
	# print "halla Tors!";
# } else {
	# print "fail";
# }

print "Hvor mange elementer er det i admin_brukere?: " . scalar(@admin_brukere) . "\n";

for ( my $teller = 0; $teller < scalar(@admin_brukere); $teller++ ) {
	my $bruker = $admin_brukere[$teller];
	print $teller . " = " . $bruker;
	&sumering($teller);
	&skriv_ut_kundenavn($bruker);
	print "\n";
	
	# print "\tHva er min referanse?: " . ref($bruker);
	# if ( ref($bruker) eq "ARRAY") {
		# print "\n";
		# print "Jeg fant en array som er " . scalar(@$bruker) ." lang";
		# print "\n";
		# print &skriv_ut_kundenavn($bruker);
		# print "\n";
		# # for ( my $teller2 = 0; $teller2 < scalar($bruker[$teller2]); $teller2++ ) {
			# # print $teller . " = " . $bruker[$teller2];
		# # }
	# }
	print "\n";
}

# Subrutiner, funksjoner eller metoder
sub skriv_ut_kundenavn {
	my $bruker = $_[0];
	print "\tMin første subrutine svarer.....\t";
	print "Brukernavn = " . $bruker;
	print "\n";
	# return $bruker;
}


sub sumering {
	my ($x, $y) = @_;
	print "sumering svarer\t-\t";
	
	if ( !$y || $y == 0 ) {
		$y = 100;
	}
	
	my $sum = $x + $y;
	print $sum;
}



# Binære tallsystem:
	# 01 = 1
	# 11 = 2
	# 10 = 3
	# 001 = 4
	# 011 = 5
	# 111 = 6
	# 110 = 7

	# 0101010100111110101010101001010101010100101010101010101010101111

	# 100 000 000 000 * X

	# X = 2

# print "Hello world";