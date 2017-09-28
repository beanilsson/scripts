echo Starting setup
ssh-add
sudo
sudo apt-get update
sudo apt-get upgrade
echo Upgrading pip
python -m pip install --upgrade pip
echo Creating virtual environment
mkvirtualenv cv
echo Installing numpy
pip install numpy
echo Installing matplotlib
pip install matplotlib
echo Installing pillow
pip install pillow
echo Installing OpenCV
echo Installing developer tools ...
sudo apt-get install build-essential cmake git pkg-config
echo Installing libraries and packages ...
sudo apt-get install libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
echo Installing GTK ...
sudo apt-get install libgtk2.0-dev
echo Installing libraries and packages ...
sudo apt-get install libatlas-base-dev gfortran
echo Building and installing OpenCV 3.0 with Python 3.4+ bindings ...
cd ~
git clone git@github.com:opencv/opencv.git
cd opencv
git checkout master
cd ~/opencv
mkdir build
cd build
rm -rf CMakeCache.txt CMakeFiles
cmake CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
    -D PYTHON3_LIBRARY=/usr/local/Cellar/python3/3.5.2_3/Frameworks/Python.framework/Versions/3.5/lib/python3.5/config-3.5m/libpython3.5.dylib \
    -D PYTHON3_INCLUDE_DIR=/usr/local/Cellar/python3/3.5.2_3/Frameworks/Python.framework/Versions/3.5/include/python3.5m/ \
    -D PYTHON3_EXECUTABLE=$VIRTUAL_ENV/bin/python \
    -D BUILD_opencv_python2=OFF \
    -D BUILD_opencv_python3=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=OFF \
    -D BUILD_EXAMPLES=ON .. \
    -D FFMPEG_INCLUDE_DIR=/usr/local/Cellar/ffmpeg/3.3.4/include/
    -D FFMPEG_LIB_DIR=/usr/local/Cellar/ffmpeg/3.3.4/lib/
    -D WITH_FFMPEG=ON
cmake
make -j4
sudo make install
cd ~/.virtualenvs/cv/lib/python3.6/site-packages/
ln -s /usr/local/lib/python3.6/site-packages/cv2.cpython-36m-darwin.so
