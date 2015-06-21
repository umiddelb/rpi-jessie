FROM

ls
    2  cd /root/
    3  ls

apt-get update
apt-get -y upgrade
apt-get -y install make gcc git bc lzop vim curl ncurses-dev
git clone https://github.com/raspberrypi/linux.git
curl https://raw.githubusercontent.com/docker/docker/master/contrib/check-config.sh > linux/check-config.sh
