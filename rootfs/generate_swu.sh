#!/bin/bash

CONTAINER_VER="1_0"
PRODUCT_NAME="rau"
PRODUCT_MOD="sys"
FILES="sw-description update.sh rootfs.tar.gz"


# if [ ! -f "system.bit" ]; then
#   rm -rf system.bit
# fi

# rm -rf *.swu

# cp $1 system.bit


for i in $FILES;do
        echo $i;done | cpio -ov -H crc >  ${PRODUCT_NAME}_${PRODUCT_MOD}_${CONTAINER_VER}.swu
