pyver=$(python --version)
if [ "$pyver" != "Python 3.7.9" ]
then
    echo yes
fi

ping www.baidu.com