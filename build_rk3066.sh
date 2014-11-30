#!/bin/bash

BASEDIR=$(dirname $0)

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export LOCALVERSION=
export INSTALL_MOD_PATH=$BASEDIR/../mod_fw
MAKE="make -j$(getconf _NPROCESSORS_ONLN)"

$MAKE mrproper

cp config.galland .config
  
$MAKE

#rm -rf $INSTALL_MOD_PATH
$MAKE modules_install

