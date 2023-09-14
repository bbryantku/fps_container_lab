#/bin/bash
home_dir=${PWD}

sudo docker load -i ${home_dir}/../../docker/container_archives/gameserver_1_0.tar
sudo docker load -i ${home_dir}/../../docker/container_archives/gameclient_1_0.tar
sudo docker load -i ${home_dir}/../../docker/container_archives/syslogserver_1_0.tar
sudo docker load -i ${home_dir}/../../docker/container_archives/vyos_1_3_0.tar