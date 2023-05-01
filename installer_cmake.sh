mkdir tmp && cd tmp
wget https://github.com/Kitware/CMake/releases/download/v3.26.3/cmake-3.26.3.tar.gz
tar -xvf cmake-3.26.3.tar.gz
rm cmake-3.26.3.tar.gz
cd cmake-3.26.3
cmake -B build
cmake --build build --parallel 5
cmake --install build --prefix=~/.local/


