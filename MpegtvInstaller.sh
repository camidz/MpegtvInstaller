#!/bin/bash
echo " "
jeshile='\e[40;38;5;82m' #jeshile
echo " "
echo -e "${jeshile} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │  installing necessary components         │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────┘ \e[0m"
echo " "
apt update && apt upgrade -y
apt-get install ffmpeg libavcodec57 libavutil55 libavfilter6 libavformat57 mysql-server libmysqlclient20 -y
echo " "
echo " "
echo -e "${jeshile} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │  Downloanding Extracting And Installing  │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────┘ \e[0m"
echo " "
#
wget -O /usr/local/bin/mpegtv http://infosat.org/mpegtv/files/mpegtv
chmod 755 /usr/local/bin/mpegtv
wget -O /usr/local/bin/slave http://infosat.org/mpegtv/files/slave
chmod 755 /usr/local/bin/slave
mkdir /var/mpegtv
cd /var/mpegtv
wget http://infosat.org/mpegtv/files/mpegtv-data.tgz
tar -xzf mpegtv-data.tgz
#
#
echo -e "${jeshile}	┌────────────────────────────────────────────────────────────────────────┐	\e[0m"
echo -e "${jeshile}	│[R] Getting MpegTv Informations                                         │	\e[0m"
echo -e "${jeshile}	└────────────────────────────────────────────────────────────────────────┘	\e[0m"
echo " "
read -p "Enter Master Port : "  masterport
read -p "Enter Master Port : "  masterport
read -p "Enter Master Port : "  masterport

read -p "Enter Slave Port : "  slaveport
echo "CONTROL PORT: $masterport" >>/var/mpegtv/mpegtv.cfg
echo "CONTROL PORT: $slaveport" >>/var/mpegtv/slvod.cfg
echo " "
echo -e "${jeshile} ┌────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │[+] installation Completed                      │ \e[0m"
echo -e "${jeshile} └────────────────────────────────────────────────┘ \e[0m"
sleep 8
# reboot
echo " "
echo " "
echo -e "${jeshile} ┌─────────────────────────----┐ \e[0m"
echo -e "${jeshile} │[R] Please Reboot server...  │ \e[0m"
echo -e "${jeshile} └─────────────────────────----┘ \e[0m"
echo " "
exit
#!/bin/bash
echo " "
jeshile='\e[40;38;5;82m' #jeshile
echo " "
echo -e "${jeshile} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │  installing necessary components         │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────┘ \e[0m"
echo " "
apt update && apt upgrade -y
apt-get install ffmpeg libavcodec57 libavutil55 libavfilter6 libavformat57 mysql-server libmysqlclient20 -y
echo " "
echo " "
echo -e "${jeshile} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │  Downloanding Extracting And Installing  │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────┘ \e[0m"
echo " "
#
wget -O /usr/local/bin/mpegtv http://infosat.org/mpegtv/files/mpegtv
chmod 755 /usr/local/bin/mpegtv
wget -O /usr/local/bin/slave http://infosat.org/mpegtv/files/slave
chmod 755 /usr/local/bin/slave
mkdir /var/mpegtv
cd /var/mpegtv
wget http://infosat.org/mpegtv/files/mpegtv-data.tgz
tar -xzf mpegtv-data.tgz
#
#
echo -e "${jeshile}	┌────────────────────────────────────────────────────────────────────────┐	\e[0m"
echo -e "${jeshile}	│[R] Getting MpegTv Informations                                         │	\e[0m"
echo -e "${jeshile}	└────────────────────────────────────────────────────────────────────────┘	\e[0m"
echo " "
read -p "Enter Master http Port : "  masterport
read -p "Enter mysql host : "  sqlhost
read -p "Enter mysql username : "  sqluser
read -p "Enter mysql password : "  sqlpass
read -p "Enter mysql database : "  sqldatabase
echo "http port: $masterport
mysql server: $sqlhost
mysql username: $sqluser
mysql password: $sqlpass
mysql database: $sqldatabase
FILE IP2COUNTRY: \"/var/mpegtv/IpToCountry.csv\"" >>/var/mpegtv/mpegtv.cfg
echo " "
echo -e "${jeshile} ┌────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │[+] installation Completed                      │ \e[0m"
echo -e "${jeshile} └────────────────────────────────────────────────┘ \e[0m"
sleep 8
echo " "
echo " "
echo -e "${jeshile} ┌─────────────────────────----┐ \e[0m"
echo -e "${jeshile} │[R] Please Reboot server...  │ \e[0m"
echo -e "${jeshile} └─────────────────────────----┘ \e[0m"
echo " "
exit
