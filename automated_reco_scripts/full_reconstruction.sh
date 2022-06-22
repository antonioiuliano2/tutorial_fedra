#environment variables with paths
export FEDRA_RECO_SCRIPTS=/home/antonio/Lavoro/tutorial_fedra/automated_reco_scripts
export EMU_RAW_DATA_FOLDER=/home/emu/CERN_SND/CERN_DATA
export EMU_RECO_DATA_FOLDER=/home/emu/CERN_SND/shch

# create brick construction for FEDRA reconstruction
# and copied all the needed scripts for reconstruction into the brick folder
source brick_constr.sh  $1 $2 $3
 
# copy *.raw data, create links in the bricks folder
source rawdata_link.sh $1 $2 $3

# run linking
source link_proc.sh $1 $2 $3

# run alignment and tracking
source align_proc.sh  $1 $2 $3








