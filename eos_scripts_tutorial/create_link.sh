#!/bin/bash
#usage: source create_link_miccern.sh brickID platelast platefirst 
# (es. source create_link_miccern.sh 44 3 2) 

BRICKID=21
NWALL=(${BRICKID:0:1})
NBRICK=(${BRICKID:1:2})
BRICKFOLDER="$(printf "b%0*d" 6 $BRICKID)"
RAWDATAPATH=/eos/experiment/sndlhc/emulsionData/2022/Napoli/SND/mic3/RUN1_W$NWALL\_B$NBRICK
RECODATAPATH=/eos/user/f/falicant/handson_FEDRA/$BRICKFOLDER

# Basic if statemen
for iplate in $(seq $2 $1)
  do

  RAWPLATEFOLDER="$(printf "P%02d" $(( 10#$iplate )))"
  PLATEFOLDER="$(printf "p%03d" $(( 10#$iplate )))"

  mkdir $RECODATAPATH/$PLATEFOLDER
  ln -s $RAWDATAPATH/$RAWPLATEFOLDER/tracks.raw.root $RECODATAPATH/$PLATEFOLDER/$BRICKID.$iplate.0.0.raw.root
  echo created link $PLATEFOLDER to folder $RAWDATAPATH/$RAWPLATEFOLDER
  
done

mkdir plot_link
mkdir plot_prelink
mkdir plot_first_align
mkdir plot_second_align
mkdir plot_local_align
mkdir goodcouples
mkdir trackfiles
mkdir trackfiles/rootfiles
mkdir trackfiles/rootfiles/47_41
mkdir trackfiles/parfiles
mkdir trackfiles/parfiles/47_41
