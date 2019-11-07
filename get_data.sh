#!/bin/bash

DIR="data"
WORK_DIR=$PWD

if [ ! -d $DIR/donation ];
then
	wget -O ${DIR}/donation.zip http://bit.ly/1Aoywaq
	cd ${DIR}
	mkdir donation
	mv donation.zip donation/
	cd donation
	unzip donation.zip
	unzip 'block_*.zip'
	rm *.zip
	cd ${WORK_DIR}
fi

if [ ! -d ${DIR}/music ];
then
	wget -O ${DIR}/profiledata_06-May-2005.tar.gz http://www.iro.umontreal.ca/~lisa/datasets/profiledata_06-May-2005.tar.gz
	cd ${DIR}
	mkdir music
	mv profiledata_06-May-2005.tar.gz music/
	cd music
	tar xvf profiledata_06-May-2005.tar.gz
	mv profiledata_06-May-2005/* .
	rmdir profiledata_06-May-2005
	cd ${WORK_DIR}
fi

if [ ! -d ${DIR}/covtype ];
then
	cd ${DIR}
	mkdir covtype
	cd covtype
	URL=https://archive.ics.uci.edu/ml/machine-learning-databases/covtype/
	wget ${URL}/covtype.data.gz
	wget ${URL}/covtype.info
	gunzip covtype.data.gz
	cd ${WORK_DIR}
fi
