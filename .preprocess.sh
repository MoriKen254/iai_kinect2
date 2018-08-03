PWD_DIR=$(pwd)
echo "***************************************"
echo "*****         for freenect        *****"
echo "***************************************"
echo "***** apt-get install software-properties-common python-software-properties *****"
apt-get install -y software-properties-common python-software-properties
echo "***** apt-get install build-essential cmake pkg-config *****"
apt-get install -y build-essential cmake pkg-config
echo "***** yes | yes | apt-add-repository ppa:floe/libusb && apt-get update -qq && apt-get install -y libusb-1.0-0-dev libusb-1.0-0-dev *****"
yes | apt-add-repository ppa:floe/libusb && apt-get update -qq && apt-get install -y libusb-1.0-0-dev libusb-1.0-0-dev
echo "***** apt-get install -y libturbojpeg libjpeg-turbo8-dev *****"
apt install -y libturbojpeg libjpeg-turbo8-dev
echo "***** dpkg -i debs/libglfw3*deb; apt-get install -f; apt-get install -y libgl1-mesa-dri-lts-vivid *****"
dpkg -i debs/libglfw3*deb; apt install -f; apt install -y libgl1-mesa-dri-lts-vivid
echo "***** yes | apt-add-repository ppa:pmjdebruijn/beignet-testing; apt-get update -qq; apt-get install -y beignet-dev; *****"
yes | apt-add-repository ppa:pmjdebruijn/beignet-testing; apt update -qq; apt install -y beignet-dev;
echo "***** pwd *****"
pwd
echo "***** ls -l *****"
ls -l
echo "***** cd src/libs/libfreenect2 *****"
cd ./src/libs/libfreenect2
echo "***** pwd *****"
pwd
echo "***** ls -l *****"
ls -l
echo "***** cmake . *****"
cmake . 
echo "***** make *****"
make
echo "***** make install *****"
make install

echo "***************************************"
echo "*****         for PCL 1.8         *****"
echo "***************************************"
echo "***** apt install gdebi -y *****"
apt install gdebi -y
echo "***** git clone https://github.com/MoriKen254/PCL-Linux-Release.git pcl-trunk *****"
git clone https://github.com/MoriKen254/PCL-Linux-Release.git pcl-trunk
echo "***** ls *****"
ls
echo "***** cd pcl-trunk *****"
cd pcl-trunk
echo "***** ls *****"
ls
echo "***** gdebi pcl_1.8.1-1_amd64.deb *****"
yes | gdebi pcl_1.8.1-1_amd64.deb


echo "***************************************"
echo "*****       Apply Lib Pkgs        *****"
echo "***************************************"
echo "***** echo CPATH *****"
echo $CPATH
echo "***** export CPATH=/usr/include:/usr/include/eigen3:/usr/local/include:CPATH *****"
export CPATH=/usr/include:/usr/include/eigen3:/usr/local/include:$CPATH
echo "***** echo CPATH *****"
echo $CPATH
echo "---------------------------------------"
echo "***** echo C_INCLUDE_PATH *****"
echo $C_INCLUDE_PATH
echo "***** export C_INCLUDE_PATH=/usr/include:/usr/include/eigen3:/usr/local/include:C_INCLUDE_PATH *****"
export C_INCLUDE_PATH=/usr/include:/usr/include/eigen3:/usr/local/include:$C_INCLUDE_PATH
echo "***** echo C_INCLUDE_PATH *****"
echo $C_INCLUDE_PATH
echo "---------------------------------------"
echo "***** echo CPLUS_INCLUDE_PATH *****"
echo $CPLUS_INCLUDE_PATH
echo "***** export CPLUS_INCLUDE_PATH=/usr/include:/usr/include/eigen3:/usr/local/include:CPLUS_INCLUDE_PATH *****"
export CPLUS_INCLUDE_PATH=/usr/include:/usr/include/eigen3:/usr/local/include:$CPLUS_INCLUDE_PATH
echo "***** echo CPLUS_INCLUDE_PATH *****"
echo $CPLUS_INCLUDE_PATH
echo "---------------------------------------"
echo "***** echo LD_LIBRPWD_DIR=$(pwd)ARY_PATH *****"
echo $LD_LIBRARY_PATH
echo "***** export LD_LIBRARY_PATH=/usr/local/lib:usr/lib:LD_LIBRARY_PATH *****"
export LD_LIBRARY_PATH=/usr/local/lib:usr/lib:$LD_LIBRARY_PATH
echo "***** echo LD_LIBRARY_PATH *****"
echo $LD_LIBRARY_PATH
echo "---------------------------------------"
echo "***** ldconfig *****"
ldconfig
echo "***** ldconfig -p *****"
ldconfig -p
cd ${PWD_DIR}
