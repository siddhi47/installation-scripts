echo "Installing build tools"
sudo apt-get install build-essential libssl-dev

echo "Downloading cmake tar file"
cd /tmp
wget https://github.com/Kitware/CMake/releases/download/v3.20.0/cmake-3.20.0.tar.gz
tar -zxvf cmake-3.20.0.tar.gz
cd cmake-3.20.0


echo "Compiling and installing cmake"

./bootstrap

echo "Making..."
make

echo "Finally Installing"
sudo make install
cmake --version
