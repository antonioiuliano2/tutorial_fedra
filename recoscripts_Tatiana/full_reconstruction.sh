
# create brick construction for FEDRA reconstruction
# and copied all the needed scripts for reconstruction into the brick folder
source brick_constr.sh  $1 $2 $3
 
# copy *.raw data, create links in the bricks folder
source rawdata_link.sh $1 $2 $3

# run linking
source link_proc.sh $1 $2 $3

# run alignment and tracking
source align_proc.sh  $1 $2 $3








