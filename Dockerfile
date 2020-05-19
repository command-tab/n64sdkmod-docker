FROM ubuntu:18.04

ENV PATH=/usr/local/n64chain/bin:${PATH}
ENV ROOT=/etc/n64

WORKDIR /usr/local

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get -y install build-essential git wget libmpfr-dev libmpc-dev libgmp-dev flex bison && \
    apt-get clean && \
    git clone https://github.com/CrashOveride95/n64chain.git ./n64chain && \
    cd ./n64chain && \
    ./build-posix64-toolchain.sh && \
    echo "deb [trusted=yes] https://coneyislanddiscopalace.xyz/apt ./" > /etc/apt/sources.list.d/coneyisland.list && \
    apt update && \
    apt-get -y install n64sdk && \
    apt-get -y install spicy && \
    apt-get -y install makemask && \
    apt-get -y install root-compatibility-enviroment
