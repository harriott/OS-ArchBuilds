#!/usr/bin/perl

# ----------------------------------------------------
# sorts nmsh output by date - incredibly useful
#
# I call this from my $AjB/bashrc-clm
# ----------------------------------------------------

use strict;  use warnings;
use Tie::File;
use Date::Parse;  # str2time
use Data::Printer;
use feature 'say';

# grab the lines of the nmsh output into an array:
tie my @nmsh, 'Tie::File', "$ARGV[0]" or die "Can't read file: $!\n";
# exit;

my @emailsSorted = splice(@nmsh,0,1); # save first line

# mark and join up each email into one single line
# ------------------------------------------------
my $allAsLine = join '◙', @nmsh;  # concatenate all lines with ◙ marker between
$allAsLine =~ s/◙Date: /▶Date: /g;  # mark out each email
my @emailsAsLines = split /▶/, $allAsLine;  # separate into array

# prefix with Unix time, then sort
# --------------------------------
my @EALunixtime;
my $date;
my $clMailAsLine;
foreach $clMailAsLine (@emailsAsLines) {
  $date = substr($clMailAsLine,6,31);  # get the RFC-822 date provided by notmuch
  push @EALunixtime, str2time($date).$clMailAsLine;
}
# p @EALunixtime; # Data::Printer - for debugging
my @EALUTSorted = sort @EALunixtime;

# unmark and restore readable emails
# ----------------------------------
my $EAL;
my $EALUTS;
my @emailAsLines;
foreach $EALUTS (@EALUTSorted) {
  $EAL = substr($EALUTS,10);
  @emailAsLines = split /◙/, $EAL;
  push(@emailsSorted, @emailAsLines);
}

@nmsh = @emailsSorted;
untie @nmsh;

