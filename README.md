# wive-ng-mt-newifi-d2
wive-ng-mt for newifi-d2 router

# how-to:

**backup original eeprom using breed**

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
  sudo ./build_toolchain.sh
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

do not forget to restore original eeprom before flashing other firmware
