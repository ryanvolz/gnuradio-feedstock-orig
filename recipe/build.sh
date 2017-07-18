#!/bin/bash
source activate "${CONDA_DEFAULT_ENV}"

# make builds with gcc>=5 compatible with conda-forge, currently using gcc<5
CXXFLAGS="${CXXFLAGS} -D_GLIBCXX_USE_CXX11_ABI=0"

# remove gnuradio's FindGSL.cmake to use cmake's version
rm -f cmake/Modules/FindGSL.cmake

mkdir build
cd build
# enable gnuradio components explicitly so we get build error when unsatisfied
# the following are disabled:
#   GR_COMEDI needs comedi
#   GR_FCD has libiconv linker error
#   GR_GRC needs pygtk
#   GR_VIDEO_SDL needs sdl
cmake ../ \
    -DSWIG_EXECUTABLE=$PREFIX/bin/swig \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DLIB_SUFFIX="" \
    -DENABLE_DOXYGEN=ON \
    -DENABLE_GR_ANALOG=ON \
    -DENABLE_GR_ATSC=ON \
    -DENABLE_GR_AUDIO=ON \
    -DENABLE_GR_BLOCKS=ON \
    -DENABLE_GR_COMEDI=OFF \
    -DENABLE_GR_CHANNELS=ON \
    -DENABLE_GR_CTRLPORT=ON \
    -DENABLE_GR_DIGITAL=ON \
    -DENABLE_GR_DTV=ON \
    -DENABLE_GR_FCD=OFF \
    -DENABLE_GR_FEC=ON \
    -DENABLE_GR_FFT=ON \
    -DENABLE_GR_FILTER=ON \
    -DENABLE_GR_GRC=OFF \
    -DENABLE_GR_NOAA=ON \
    -DENABLE_GR_PAGER=ON \
    -DENABLE_GR_QTGUI=ON \
    -DENABLE_GR_RUNTIME=ON \
    -DENABLE_GR_TRELLIS=ON \
    -DENABLE_GR_UHD=ON \
    -DENABLE_GR_UTILS=ON \
    -DENABLE_GR_VIDEO_SDL=OFF \
    -DENABLE_GR_VOCODER=ON \
    -DENABLE_GR_WAVELET=ON \
    -DENABLE_GR_WXGUI=ON \
    -DENABLE_GR_ZEROMQ=ON \
    -DENABLE_PYTHON=ON \
    -DENABLE_SPHINX=ON \
    -DENABLE_TESTING=ON \
    -DENABLE_VOLK=ON \
    -DENABLE_INTERNAL_VOLK=ON
make -j${CPU_COUNT}
make install
