FROM　ubuntu:16.04
RUN apt update \
    && apt install nginx mariadb-server mariadb-client unzip p7zip-full software-properties-common 
    && add-apt-repository ppa:compomega/comphack
		&& apt install comphack
systemctl enable comp_lobby.service comp_world.service comp_channel.service