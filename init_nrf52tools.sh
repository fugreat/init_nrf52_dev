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
tar -xvjf /opt/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 -C /opt

# download SDKs
NORDIC_SDK=https://www.nordicsemi.com/-/media/Software-and-other-downloads/SDKs/nRF5/Binaries/nRF5SDK1702d674dde.zip
wget -P /opt -q --show-progress $NORDIC_SDK
unzip /opt/nRF5SDK1702d674dde.zip -d /opt

# install nrfutils
sudo apt install python-pip
pip install nrfutil


# install jlink for debugger & download
### 安装烧录工具 pynrfjprog
#pip install pynrfjprog ## 太慢

#改为：
wget -P /opt https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-10-x-x/10-12-0/pynrfjprog10120.zip
cd /opt
unzip pynrfjprog10120.zip
python /opt/pynrfjprog-10.12.0/setup.py install