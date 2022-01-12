echo "[auto] Setup Begin ..."
pyver=$(python --version)
if [ "$pyver" != "Python 3.7.9" ]
then
echo "[auto] Install Basic ..."
yum install -y wget gcc tar make git
echo "[auto] Install Python Dependence ..."
yum install -y openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel
echo "[auto] Download Python-3.7.9.tgz ..."
wget -O python.tgz https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
echo "[auto] Decompress Python-3.7.9.tgz ..."
tar -zxvf python.tgz
rm -rf python.tgz
echo "[auto] Move Python-3.7.9 to /usr/local/Python-3.7.9 ..."
mv Python-3.7.9 /usr/local
workdir=$(cd $(dirname $0); pwd)
cd /usr/local/Python-3.7.9
echo "[auto] Python Install configure ..."
./configure
echo "[auto] Python Install make ..."
make
echo "[auto] Python Install make install ..."
make install
cd workdir
echo "[auto] Remove Old python link ..."
rm -rf /usr/bin/python
rm -rf /usr/bin/pip
echo "[auto] Python link ..."
ln -s /usr/local/bin/python3.7 /usr/bin/python
ln -s /usr/local/bin/pip3.7 /usr/bin/pip
echo "[auto] Python Finished !!!"
fi
echo "[auto] Python --version"
python -V
echo "[auto] Pip Install libs ..."
pip install websockets
pip install requests
echo "[auto] Download boot.py ..."
wget -O python.tgz https://raw.githubusercontent.com/psygames/psyauto/master/boot.py
echo "[auto] Run boot.py ..."
python boot.py
echo "[auto] Setup Finished !!!"