#!/bin/bash

CELL=$3
fromplate=$4
toplate=$5

echo "Set up SND environment"
SNDBUILD_DIR=/afs/cern.ch/work/f/falicant/public/SNDBUILD/sw
source /cvmfs/sndlhc.cern.ch/SNDLHC-2023/Aug30/setUp.sh
eval `alienv load -w $SNDBUILD_DIR --no-refresh sndsw/latest`
source /afs/cern.ch/work/f/falicant/public/fedra/setup_new.sh	

echo  "go into reconstruction folder "
cd /eos/user/f/falicant/handson_FEDRA/b000021
echo "do first linking for cell "$CELL
echo "from plate " $fromplate
echo "to plate " $toplate

source firstlinking_cell.sh $fromplate $toplate $CELL


#to avoid crashes put these in sub
#requirements = Machine =!= LastRemoteHost
#on_exit_remove          = (ExitBySignal == False) && ((ExitCode == 1) || (ExitCode == 0))
#max_retries             = 3

