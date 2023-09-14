cd ..\..\docker\container_building
docker-compose build
docker save local/gameserver:1.0 > ..\container_archives\gameserver_1_0.tar
docker save local/gameclient:1.0 > ..\container_archives\gameclient_1_0.tar
docker save local/syslogserver:1.0 > ..\container_archives\syslogserver_1_0.tar



