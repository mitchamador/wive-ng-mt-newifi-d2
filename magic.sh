#!/bin/sh

[ -e $PWD/magic.sh ] && exit

sudo apt-get update
sudo apt-get -y install bash build-essential flex gcc libc6 bison libtool libgmp-dev libmpc-dev libmpfr-dev texinfo intltool fakeroot gperf zlib1g-dev gcc-multilib gawk autopoint gengetopt zip pkg-config openssl links git python-minimal

git clone git://git.code.sf.net/p/wive-ng/wive-ng-mt wive-ng-mt
cd wive-ng-mt

wget -q https://github.com/mitchamador/wive-ng-mt-newifi-d2/archive/master.tar.gz -O - | tar --strip-components=1 -zxf -

cd toolchain
./build_toolchain.sh
cd ..

./compile NEWIFI-D2
