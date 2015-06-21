FROM resin/rpi-raspbian

RUN mkdir /boot/overlays
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install make gcc git bc lzop vim curl ncurses-dev
RUN git clone https://github.com/raspberrypi/linux.git
RUN curl -sSL https://raw.githubusercontent.com/docker/docker/master/contrib/check-config.sh > /linux/check-config.sh
RUN curl -sSL https://github.com/umiddelb/rpi-jessie/raw/master/make_kernel.sh > /linux/make_kernel.sh
