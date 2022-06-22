#!bin/bash
id=9
i=$2
ii=$3



### create link for *.raw.root files

if [ $1 -le $id ] 
	then
		while [ $i -le $id ] && [ $i -le $ii ]
		do 	
 		ln -s $EMU_RAW_DATA_FOLDER/b00000$1/p00$i/$1.$i.0.0.raw.root $EMU_RECO_DATA_FOLDER/b00000$1/p00$i/$1.$i.0.0.raw.root
		((i++))
		done
		
		while [ $i -gt $id ] && [ $i -le $ii ]
		do 
		ln -s $EMU_RAW_DATA_FOLDER/b00000$1/p0$i/$1.$i.0.0.raw.root $EMU_RECO_DATA_FOLDER/b00000$1/p0$i/$1.$i.0.0.raw.root
		((i++))
		done		
fi

#--------------------------------------------------------------------------------------------------------------------------
if [ $1 -gt $id ] 
	then
		while [ $i -le $id ] && [ $i -le $ii ]
		do 	
 		ln -s $EMU_RAW_DATA_FOLDER/b0000$1/p00$i/$1.$i.0.0.raw.root $EMU_RECO_DATA_FOLDER/b0000$1/p00$i/$1.$i.0.0.raw.root
		((i++))
		done
		
		while [ $i -gt $id ] && [ $i -le $ii ]
		do 
		ln -s $EMU_RAW_DATA_FOLDER/b0000$1/p0$i/$1.$i.0.0.raw.root $EMU_RECO_DATA_FOLDER/b0000$1/p0$i/$1.$i.0.0.raw.root
		((i++))
		done		
fi



