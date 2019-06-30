raspin-config
raspi-config
sudo raspi-config
sudo apt-get update
sudo apt-get upgrade
sudo shutdown -r now
sudo apt-get install build-essential python3 python3-dev python3-virtualenv python3-numpy python3-picamera python3-pandas python3-rpi.gpio i2c-tools avahi-utils joystick libopenjp2-7-dev libtiff5-dev gfortran libatlas-base-dev libopenblas-dev libhdf5-serial-dev git
sudo apt-get install libilmbase-dev libopenexr-dev libgstreamer1.0-dev libjasper-dev libwebp-dev libatlas-base-dev libavcodec-dev libavformat-dev libswscale-dev libqtgui4 libqt4-test
python3 -m virtualenv -p python3 env --system-site-packages
echo "source env/bin/activate" >> ~/.bashrc
source ~/.bashrc
mkdir projects
cd projects/
git clone https://github.com/autorope/donkeycar
cd donkeycar
git checkout master
pip install -e .[pi]
pip install tensorflow
python -c "import tensorflow"
pip install opencv-python
python -c "import cv2"
donkey createcar --path ~/mycar
nano myconfig.py
cd ..
ls
cd mycar/
ls
nano myconfig.py
sudo apt-get install i2c-tools
sudo i2cdetect -y 1
cd /dev/input/
ls
cd ~
cd /dev/input/
ls
cd ~
nano /etc/modprobe.d/xbox_bt.conf
sudo nano /etc/modprobe.d/xbox_bt.conf
sudo shutdown -r now
cat /sys/module/bluetooth/parameters/disable_ertm
sudo bluetoothctl
donkey calibrate --channel 0
nano mycar/myconfig.py 
donkey createjs
ls
cd mycar/
ls
nano my_joystick.py 
python manage.py drive --js
python manage.py drive
sudo shutdown -h now
python mycar/manage.py drive --js
cd mycar/
donkey createjs
python manage.py drive --js
sudo bluetoothctl
donkey createjs
python manage.py drive --js
sudo shutdown -h now
sudo bluetoothctl
python manage.py drive --js
cd mycar/
python manage.py drive --js
sudo shutdown -h now
sudo bluetoothctl
python mycar/manage.py drive --js
sudo shutdown -h now
donkey calibrate --channel 0
donkey calibrate --channel 1
python mycar/manage.py drive --js
sudo shutdown -h now
python mycar/manage.py drive --js
ls
cd mycar/
ls
cd data/
ls
rm -r .
sudo rm -r .
sudo rm -r ~/mycar/data/*
ls
cd ..
ls
sudo shutdown -h now
python mycar/manage.py drive --js
sudo rm -r ~/mycar/data/*
python mycar/manage.py drive --js
sudo rm -r ~/mycar/data/*
python mycar/manage.py drive --js
sudo shutdown -h now
cd mycar/
donkey createjs
exit
python mycar/manage.py drive --js
date
logout
cd mycar/
cd models/
ls
cd ..
python manage.py drive --model ~/mycar/models/mypilot.h5
sudo shutdown -h now
python mycar/manage.py drive --js
sudo shutdown -h now
python mycar/manage.py drive --js
sudo shutdown -h now
python mycar/manage.py drive --js
sudo shutdown -h now
cd mycar/
git remote -v
cd ..
git remote -v
ls
cd projects
ls
cd donkeycar
git remote -v
cd ..
ls
cd mycar/
git init
git add
git add .
git commit -m "First Commit with all the files."
git config --global user.email mr.amolpatel@gmail.com
git config --global user.name "Amol"
git remote add desti git@github.com:patelamol/WhiteDonkey
git push -u desti master
git branch
git push -u desti
git push --set-upstream desti master
git remote rm desti
git remote -v
git remote add destination https://github.com/patelamol/WhiteDonkey.git
git push --set-upstream destination master
git show-ref
git status
nano .gitignore
git add .gitignore
git commit -m "First Commit with all the files."
git status
ls
nano .gitignore
git status
git add .gitignore 
git status
git push -u destination master
sudo shutdown -h now
python mycar/manage.py drive --js
ls
cd mycar/
cd data/
ls
cd tub_9_19-06-30
ls
cd ..
mv Rounds13.8/ ~/BackupData/
ls
cd ..
ls
cd BackupData/
ls
cd ..
python mycar/manage.py drive --js
sudo shutdown -h now
