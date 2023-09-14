#! /usr/bin/perl

use utf8;
use strict;
use warnings;
use FindBin qw($Bin $RealBin);
use Cwd 'abs_path';
#use Getopt::Long;
#use Bio::SeqIO;
#use Bio::Seq;
#use List::Util qw/sum min max/;
#use List::MoreUtils qw/uniq/;
#use File::Basename qw/basename dirname/;
#use File::Spec::Functions qw/rel2abs/;
#use FindBin qw/$Bin $Script/;
#use lib $Bin;
#Author: jhguo@genedenovo.com
die "perl $0 <RNA_A-vs-B.xls> <TE_C-vs-D.xls> <output_prefix> <pvalue/qvalue/none> <|log2FC|>\nexample:\n perl $0 RNA_A-vs-B.xls RIB_C-vs-D.xls ./test p_value 1" unless(@ARGV eq 5);
open FILE,$ARGV[0] or die "failed to open $ARGV[0]";
my %cor_ids;
my %fc1;
my %sigs1;
<FILE>;
while(<FILE>){
	chomp;
	my @ar = split("\t",$_);
	if($ARGV[3] eq "qvalue"){
		if($ar[-1]<0.05 && abs($ar[-3])>$ARGV[4]){
			$sigs1{$ar[0]} = 1;
		}else{
			$sigs1{$ar[0]} = 0;
		}
	}elsif($ARGV[3] eq "pvalue"){
		if($ar[-2]<0.05 && abs($ar[-3])>$ARGV[4]){
			$sigs1{$ar[0]} = 1;
		}else{
			$sigs1{$ar[0]} = 0;
		}
	}elsif($ARGV[3] eq "none"){
		if(abs($ar[-3])>$ARGV[4]){
			$sigs1{$ar[0]} = 1;
		}else{
			$sigs1{$ar[0]} = 0;
		}
	}else{
		die "erro type $ARGV[3]";
	}
#	if($ar[1] != 0 || $ar[2] != 0){
	$cor_ids{$ar[0]}++;
	$fc1{$ar[0]} = $ar[-3];
#	}
}
close FILE;
open FILE2,$ARGV[1] or die  "failed to open $ARGV[1]";
<FILE2>;
my %fc2;
my %sigs2;
while(<FILE2>){
	chomp;
	my @ar = split("\t",$_);
	
	if($ARGV[3] eq "qvalue" ){
		if($ar[-1]<0.05 && $ar[-3] ne "NA" && abs($ar[-3])>$ARGV[4]){
			$sigs2{$ar[0]} = 1;
		}else{
			$sigs2{$ar[0]} = 0;
		}
	}elsif($ARGV[3] eq "pvalue"){
		if($ar[-2]<0.05 && $ar[-3] ne "NA" && abs($ar[-3])>$ARGV[4]){
			$sigs2{$ar[0]} = 1;
		}else{
			$sigs2{$ar[0]} = 0;
		}
	}elsif($ARGV[3] eq "none"){
		if($ar[-3] ne "NA" && abs($ar[-3])>$ARGV[4]){
			$sigs2{$ar[0]} = 1;
		}else{
			$sigs2{$ar[0]} = 0;
		}
	}
#	if($ar[1] ne "0" || $ar[2] ne "0"){
	$cor_ids{$ar[0]}++;
	$fc2{$ar[0]} = $ar[-3];
#	}
}
close FILE2;
open OUTPUT,">$ARGV[2].xls" or die "failed to write $ARGV[2].xls";
print OUTPUT "id\tRNA_log2FC\tTE_log2FC\ttypes\n";
open LOG,">/$ARGV[2].log" or die "failed to write $ARGV[2].log";
`mkdir -p $ARGV[2]_enrich`;
open Homodirection,"> $ARGV[2]_enrich/Homodirection.glist" or die $!;
open Opposite,"> $ARGV[2]_enrich/Opposite.glist" or die $!;
open Transcription,"> $ARGV[2]_enrich/Transcription.glist" or die $!;
open Translation,"> $ARGV[2]_enrich/TE.glist" or die $!;
open Unchanged,"> $ARGV[2]_enrich/Unchanged.glist" or die $!;
my ($Homodirection,$Opposite,$Transcription,$Translation,$Unchanged) = (0,0,0,0,0);
foreach my $key(keys %cor_ids){
	if($cor_ids{$key} == 2){
		if($sigs1{$key} == 1 and $sigs2{$key} == 1){
			if($fc1{$key}*$fc2{$key}>0){
				print OUTPUT $key."\t".$fc1{$key}."\t".$fc2{$key}."\tHomodirection\n";
				$Homodirection++;
				print Homodirection $key."\n";
			}else{
				print OUTPUT $key."\t".$fc1{$key}."\t".$fc2{$key}."\tOpposite\n";
				$Opposite++;
				print Opposite $key."\n";
			}
		}elsif($sigs1{$key} == 1){
			print OUTPUT $key."\t".$fc1{$key}."\t".$fc2{$key}."\tTranscription\n";
			$Transcription++;
			print Transcription $key."\n";
		}elsif($sigs2{$key} == 1){
			print OUTPUT $key."\t".$fc1{$key}."\t".$fc2{$key}."\tTE\n";
			$Translation++;
			print Translation $key."\n";
		}else{
			print OUTPUT $key."\t".$fc1{$key}."\t".$fc2{$key}."\tUnchanged\n";
			$Unchanged++;
			print Unchanged $key."\n";
		}
	}
}
close OUTPUT;
`perl /home/guojianhui/pipeline/Ribo_seq/Script/addDesc3.pl -input $ARGV[2].xls -desc $ARGV[0]`;
`perl /home/guojianhui/pipeline/Ribo_seq/Script/addDesc3.pl -input $ARGV[2].xls -desc $ARGV[1]`;

print LOG "Homodirection\t$Homodirection\nOpposite\t$Opposite\nTranscription\t$Transcription\nTE\t$Translation\nUnchanged\t$Unchanged\n";
close LOG;
close OUTPUT;
`Rscript $RealBin/draw_5_split_te.r $ARGV[2].xls $ARGV[2]`;
`convert -density 300 $ARGV[2].pdf $ARGV[2].png`;
