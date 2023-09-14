#/bin/bash
home_dir=${PWD}

cd ../../docker
sudo docker-compose down
cd ${home_dir}