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
echo Installing openCV
sudo pip install opencv-python
sudo pip3 install opencv-python
