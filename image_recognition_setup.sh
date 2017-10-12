echo Starting setup
sudo
sudo apt-get update
sudo apt-get upgrade
echo Upgrading pip
python -m pip install --upgrade pip
echo Installing numpy
sudo pip3 install numpy
echo Installing matplotlib
sudo pip3 install matplotlib
echo Installing pillow
sudo pip3 install pillow
echo Installing OpenCV
echo Installing developer tools ...
sudo apt-get install build-essential cmake git pkg-config
echo Installing libraries and packages ...
sudo apt-get install libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
echo Installing GTK ...
sudo apt-get install libgtk2.0-dev
echo Installing libraries and packages ...
sudo apt-get install libatlas-base-dev gfortran
echo Installing openCV
sudo pip3 install opencv-python
echo Installing mpld3
sudo pip3 install mpld3
