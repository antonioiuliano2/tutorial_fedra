#!bin/bash

###  create brick structure

id=9
i=$2
ii=$3


# create brick folder
if [ $1 -le $id ] 
	then
	mkdir $EMU_RECO_DATA_FOLDER/b00000$1	
else
	mkdir $EMU_RECO_DATA_FOLDER/b0000$1	

fi

#  create folders inside the brick
if [ $1 -le $id ] 
	then
	cd $EMU_RECO_DATA_FOLDER/b00000$1
	# copy macros for linking, alignment, tracking
	cp $FEDRA_RECO_SCRIPTS/*.* .

		
	mkdir AFF

		while [ $i -le $id ] && [ $i -le $ii ]
			do 	
 			mkdir p00$i
			((i++))
			done
			
		while [ $i -gt $id ] && [ $i -le $ii ]
			do 	
 			mkdir p0$i
			((i++))
			done		
		
	else
	cd $EMU_RECO_DATA_FOLDER/b0000$1
	# copy macros for linking, alignment, tracking
	cp $FEDRA_RECO_SCRIPTS/*.* .
	
	mkdir AFF
		while [ $i -le $id ] && [ $i -le $ii ]
			do 	
 			mkdir p00$i
			((i++))
			done
			
		while [ $i -gt $id ] && [ $i -le $ii ]
			do 	
 			mkdir p0$i
			((i++))
			done		
fi
