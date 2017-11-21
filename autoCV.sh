git clone https://github.com/Itseez/opencv.git
cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make
make install
cd /etc/ld.so.conf.d
sudo echo /usr/local/lib64>>libc.conf
sudo ldconfig
echo "done!"

