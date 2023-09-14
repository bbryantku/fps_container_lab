#/bin/bash
home_dir=${PWD}

############################################################
#### Warning Optional Prune
#### This will clear all existing docker images and networks
############################################################
## prune all existing images to ensure consistent build environment
#sudo docker system prune -a

############################################################

## build gameserver and gameclient images
cd ../../docker/container_building
sudo docker-compose build

cd ${home_dir}

#store images as local archives for easy loading and retrieval
sudo docker save local/gameserver:1.0 > ${home_dir}/docker/container_archives/gameserver_1_0.tar
sudo docker save local/gameclient:1.0 > ${home_dir}/docker/container_archives/gameclient_1_0.tar
sudo docker save local/syslogserver:1.0 > ${home_dir}/docker/container_archives/syslogserver_1_0.tar
sudo chown -R 1000:1000 ${home_dir}/docker/container_archives/



