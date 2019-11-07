#!/bin/bash

sudo systemctl start ssh.service

cd ${HADOOP_DIR}
cd sbin
sudo ./start-dfs.sh
