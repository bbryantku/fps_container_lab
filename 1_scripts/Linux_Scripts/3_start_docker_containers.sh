#/bin/bash
home_dir=${PWD}

cd ../../docker
sudo docker-compose up -d
cd ${home_dir}