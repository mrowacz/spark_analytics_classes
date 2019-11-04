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
