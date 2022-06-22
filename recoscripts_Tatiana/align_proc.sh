#set here dzbase and dz for all alignment steps
DZBASE=175
DZ=-1350

makescanset -set=$1.0.0.0 -dzbase=$DZBASE -dz=$DZ -from_plate=$2 -to_plate=$3 -v=2
cp align.pass1.rootrc align.rootrc
emalign -set=$1.0.0.0 -new -v=2


makescanset -set=$1.0.0.0 -dzbase=$DZBASE -dz=$DZ -from_plate=$2 -to_plate=$3
cp align.pass2.rootrc align.rootrc
emalign -set=$1.0.0.0 -new -v=2

makescanset -set=$1.0.0.0 -dzbase=$DZBASE -dz=$DZ -from_plate=$2 -to_plate=$3 
cp align.pass3.rootrc align.rootrc
emalign -set=$1.0.0.0 -new -v=2

makescanset -set=$1.0.0.0 -dzbase=$DZBASE -dz=$DZ -from_plate=$2 -to_plate=$3 

cp track.pass.rootrc track.rootrc
emtra -set=$1.0.0.0 -new -v=2
