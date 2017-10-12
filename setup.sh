#For Ubuntu 16.04
echo Begin setup ....
echo Init vagrant box
vagrant init bento/ubuntu-16.04
vagrant up
vagrant ssh
sudo apt-get update
sudo apt-get -y upgrade
echo Installing git ...
sudo apt install git
echo Python3 version is:
python3 -V
echo Installing pip ...
sudo apt install python-pip
sudo apt-get install -y python3-pip
echo Installing ag ...
sudo apt install silversearcher-ag
echo Removing packages that are no longer required ...
sudo apt autoremove -y
