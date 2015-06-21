export KERNEL=kernel
make clean
make bcmrpi_defconfig
make -j 4 zImage modules dtbs
sudo make modules_install
sudo cp arch/arm/boot/dts/*.dtb /boot/
sudo cp arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/
sudo scripts/mkknlimg arch/arm/boot/zImage /boot/$KERNEL.img

tar -czvf /rpi/rpi-kernel.tgz /boot /lib/modules /lib/firmware 
