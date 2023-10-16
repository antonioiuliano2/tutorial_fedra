#!/bin/bash

FROMPLATE=$3
TOPLATE=$4

echo "Set up SND environment"
SNDBUILD_DIR=/afs/cern.ch/work/f/falicant/public/SNDBUILD/sw
source /cvmfs/sndlhc.cern.ch/SNDLHC-2023/Aug30/setUp.sh
eval `alienv load -w $SNDBUILD_DIR --no-refresh sndsw/latest`
source /afs/cern.ch/work/f/falicant/public/fedra/setup_new.sh

echo  "go into reconstruction folder "
cd /eos/user/f/falicant/handson_FEDRA/b000021

echo "do alignment"

source firstalign.sh $FROMPLATE $TOPLATE

source secondalign.sh $FROMPLATE $TOPLATE

source localalign.sh $FROMPLATE $TOPLATE
