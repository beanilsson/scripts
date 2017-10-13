echo Starting setup
sudo
sudo apt-get update
sudo apt-get upgrade
echo Upgrading pip
pip3 install --upgrade pip
echo Installing numpy
sudo pip3 install numpy
echo Installing matplotlib
sudo pip3 install matplotlib
echo Installing pillow
sudo pip3 install pillow
echo Installing OpenCV
sudo pip3 install opencv-python
echo Installing developer tools ...
sudo apt-get install build-essential cmake git pkg-config -y
echo Installing libraries and packages ...
sudo apt-get install ffmpeg x264 libx264-dev -y
sudo apt-get install libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
echo Installing GTK ...
sudo apt-get install libgtk2.0-dev -y
echo Installing libraries and packages ...
sudo apt-get install libatlas-base-dev gfortran -y
echo Installing openCV
sudo pip3 install opencv-python
# Visualize matplotlib in browser http://mpld3.github.io/quickstart.html
echo Installing mpld3
sudo pip3 install mpld3
