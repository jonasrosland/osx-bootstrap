dir="$HOME/Developer/virtualswede"
mkdir -p $dir
cd $dir
git clone --recursive git://github.com/virtualswede/osx-bootstrap.git
cd osx-bootstrap
bash bootstrap.sh