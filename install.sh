dir="$HOME/Developer/virtualswede"
mkdir -p $dir
cd $dir
git clone --recursive https://github.com/virtualswede/osx-bootstrap.git
cd osx-bootstrap
bash bootstrap.sh
