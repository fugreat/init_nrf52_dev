#!/bin/bash

## init ubuntu nrf52 dev


#install compile tools
apt-get update && apt-get -y install \
      vim   \
      git   \
      wget  \
      python \
      unzip \
      make \
      srecord


# download  gcc
NRF_TOOLCHAIN=https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2
wget -P /opt -q --show-progress $NRF_TOOLCHAIN
tar -xvjf /opt/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 -o /opt

# download SDKs
NORDIC_SDK=https://www.nordicsemi.com/-/media/Software-and-other-downloads/SDKs/nRF5/Binaries/nRF5SDK1702d674dde.zip
wget -P /opt -q --show-progress $NORDIC_SDK
unzip /opt/nRF5SDK1702d674dde.zip -d /opt

