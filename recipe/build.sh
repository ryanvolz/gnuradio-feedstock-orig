#!/bin/bash
source activate "${CONDA_DEFAULT_ENV}"

# make builds with gcc>=5 compatible with conda-forge, currently using gcc<5
CXXFLAGS="${CXXFLAGS} -D_GLIBCXX_USE_CXX11_ABI=0"

# remove gnuradio's FindGSL.cmake to use cmake's version
rm -f cmake/Modules/FindGSL.cmake

mkdir build
cd build
cmake ../ \
    -DSWIG_EXECUTABLE=$PREFIX/bin/swig \
    -DENABLE_GR_FCD=OFF \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DLIB_SUFFIX=""
make -j4
make install
