FROM resin/rpi-raspbian

RUN mkdir /boot/overlays
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install make gcc git bc lzop vim curl ncurses-dev
RUN git clone https://github.com/raspberrypi/linux.git
RUN curl https://raw.githubusercontent.com/docker/docker/master/contrib/check-config.sh > linux/check-config.sh
RUN 
