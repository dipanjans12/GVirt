#!/bin/bash
base="mix_srad_"
out_base="out_srad_"
post="_4"
ext=".csv"
las="_las"
for i in "dev0" "GRR" "GMin" "GwtMin"
do
	infile1=$base$i
	infile2=$base$i$post
	infile3=$base$i$las$post
	outfile1=$out_base$i$ext
	outfile2=$out_base$i$post$ext
	outfile3=$out_base$i$las$post$ext
	./cfd $infile1 $outfile1
	./cfd $infile2 $outfile2
	./cfd $infile3 $outfile3
done
