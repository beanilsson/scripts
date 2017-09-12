echo Installing homebrew ...
sudo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" -y
echo Updating homebrew ...
brew update
echo export PATH=/usr/local/bin:$PATH >> ~/.bash_profile
source ~/.bash_profile
echo Installing python3 ...
brew install python3
brew linkapps python3
which python3
echo Installing pip ...
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo pip3 install virtualenv virtualenvwrapper
echo export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3 >> ~/.bashrc
echo export WORKON_HOME=$HOME/.virtualenvs >> ~/.bashrc
echo source /usr/local/bin/virtualenvwrapper.sh >> ~/.bashrc
source ~/.bashrc
sudo apt-get install python3.4-dev
#sudo apt install python-pip
echo Installing openCV prerequisities ...
brew install cmake pkg-config
brew install jpeg libpng libtiff openexr
brew install eigen tbb
