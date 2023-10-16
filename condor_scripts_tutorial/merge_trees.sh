#!/bin/bash

ProcId=$2
PLATENUMBER=$3

echo "Set up SND environment"
SNDBUILD_DIR=/afs/cern.ch/work/f/falicant/public/SNDBuild/sw
source /cvmfs/sndlhc.cern.ch/SNDLHC-2023/Aug30/setUp.sh
eval `alienv load -w $SNDBUILD_DIR --no-refresh sndsw/latest`
source /afs/cern.ch/work/f/falicant/public/fedra/setup_new.sh	

echo  "merge cells for plate ",$PLATENUMBER

cd /eos/user/f/falicant/handson_FEDRA/b000021

root -l -q merge_couplestrees.C\($PLATENUMBER\)

source prepare_align.sh $PLATENUMBER $PLATENUMBER
