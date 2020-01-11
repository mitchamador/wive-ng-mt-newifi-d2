# wive-ng-mt-newifi-d2
[wive-ng-mt](https://sourceforge.net/projects/wive-ng/) for newifi-d2 router

# how-to

**backup original eeprom using breed**

install dependencies
```sh
sudo apt-get update
sudo apt-get -y install bash build-essential flex gcc libc6 bison libtool libgmp-dev libmpc-dev libmpfr-dev texinfo intltool fakeroot gperf zlib1g-dev gcc-multilib gawk autopoint gengetopt zip pkg-config openssl links git python-minimal
```

clone wive-ng-mt repo:
```sh
  git clone git://git.code.sf.net/p/wive-ng/wive-ng-mt wive-ng-mt
  cd wive-ng-mt
```

download and unpack this repo
```sh
  wget -q https://github.com/mitchamador/wive-ng-mt-newifi-d2/archive/master.tar.gz -O - | tar --strip-components=1 -zxf -
```

build toolchain
```sh
  cd toolchain
  ./build_toolchain.sh
  cd ..
```

compile firmware
```sh
  ./compile NEWIFI-D2
```

flash firmware file (images/LENOVO-NEWIFI-D2-NEWIFI-D2...bin) using breed

defaults:
- SSIDs: Wive-NG-MT and Wive-NG-MT-5GHZ
- wifi password: 1234567890
- lan address: 192.168.1.1
- web/ssh login: Admin
- web/ssh password: Admin

note:
- use ubuntu 16.04 for compiling firmware;
- do not forget to restore original eeprom before flashing other firmware;

magic trick:
```sh
  wget -q https://raw.githubusercontent.com/mitchamador/wive-ng-mt-newifi-d2/master/magic.sh -O - | bash
```
