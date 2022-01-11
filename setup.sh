echo "[auto] Setup Begin ..."
yum install -y wget openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel
wget -P pkg -O python.tgz https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
echo "[auto] Setup Finished !!!"