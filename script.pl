#!/usr/bin/perl
use warnings;
use strict;
use File::Basename;
use Time::HiRes;

# To store the files
# from the directory in the array
my $epoc_start = time();
my @files = glob('./test_files/*');

# Printing the created array
# print "@files\n";

# for(@files){
#   print("$_","\n");
# }

foreach my $filenames (@files) {
  print "\n";
  print "File location: ", $filenames, "\n";
  print "Name of the test file: ", basename($filenames), "\n";
  print "OUTPUT:\n";
  system("gcc", $filenames, "-o", "output");
  system('output.exe');
}

my $epoc_end = time();

my $epoc_time = $epoc_end - $epoc_start;

print "\n";
print "Simulation time: $epoc_time seconds";