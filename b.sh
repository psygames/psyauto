cd C:
workdir=$(cd $(dirname $0); pwd)
echo $workdir
cd C:/
echo "$(dirname $0)"
cd $workdir
echo "$(dirname $0)"
ping www.baidu.com