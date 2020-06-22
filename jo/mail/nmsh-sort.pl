#!/usr/bin/perl

# -------------------------
# sorts nmsh output by date
# perl nmsh.pl nms.mail
# -------------------------

use strict;  use warnings;
use Tie::File;
use Date::Parse;
use Data::Printer;
use feature 'say';

# grab the lines of the nmsh output into an array:
tie my @nmsh, 'Tie::File', "$ARGV[0]" or die "Can't read file: $!\n";
# exit;

my @emailsSorted = splice(@nmsh,0,2); # save vim modeline

# mark and join up each email into one single line
# ------------------------------------------------
my $allAsLine = join '◙', @nmsh;  # concatenate all lines with ◙ marker between
$allAsLine =~ s/◙Date: /▶Date: /g;  # mark out each email
my @emailsAsLines = split /▶/, $allAsLine;  # separate into array

# prefix with Unix time, then sort
# --------------------------------
my @EALunixtime;
my $date;
my $emailAsLine;
foreach $emailAsLine (@emailsAsLines) {
  $date = substr($emailAsLine,6,31);  # get the RFC-822 date provided by notmuch
  push @EALunixtime, str2time($date).$emailAsLine;
}
# p @EALunixtime; # Data::Printer - for debugging
my @EALUTSorted = sort @EALunixtime;

# unmark and restore readable emails
# ----------------------------------
my $EAL;
my $EALUTS;
foreach $EALUTS (@EALUTSorted) {
  $EAL = substr($EALUTS,10);
  push(@emailsSorted, $EAL);
}

@nmsh = @emailsSorted;
untie @nmsh;

