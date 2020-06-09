#!/bin/bash

#export PATH=$PATH:/home/jack/WD/src/Armada375/marvell-gcc-4.6.x-2013_Q3.1/armv7-marvell-linux-gnueabi-softfp_i686_64K_Dev_20131002/bin
export PATH=$PATH:/opt_gccarm/armv7-marvell-linux-gnueabi-softfp_i686_64K_Dev_20131002/bin
export ARCH=arm
export CROSS_COMPILE=arm-marvell-linux-gnueabi-
export CROSS_COMPILE_BH=arm-marvell-linux-gnueabi-
export ALPHA_UBOOT_VERSION=1.0

xbuild(){
	make mrproper
	#./build.pl -f nand -v YellowStone_2014T2_PQ -b armada_38x -i nand -c -o $(pwd)
	./build.pl -f nand -v Yosemite_2014T3_PQ -b armada_38x -i nand -c -o $(pwd)
}

xclean()
{
	make clean
	find -iname '.depend*' -exec \rm -rf {} \;
}


if [ "$1" = "build" ]; then
	xbuild
elif [ "$1" = "clean" ]; then
	xclean
else
	echo "Usage : xbuild.sh build or xbuild.sh clean"
fi


