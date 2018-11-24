#! /binbash
green='\e[1;32m'
red='\e[1;31m'
clear
echo "Loading..."
sleep 3
echo "Author : X-Mr.R4h1M"
sleep 2
echo "You Run The Install Proces.."
apt update &&
apt upgrade -y &&
apt install git wget libuv-dev -y &&
git clone https://github.com/NanoBytesInc/miners
wget http://teciel.free.fr/config.json
pkg install neofetch -y
neofetch
echo "Pleasee Select Your Versions Android"
echo -e "${green}1.${red}Android_ARM86"
echo -e "${green}2.${red}Android_ARM64"
echo -e "${green}3.${red}Android_i686"
echo -n -e "\e[0mSelect Number > "
read pilih
if [ $pilih -eq "1" ]; then
cd miners/xmrig && mv android_arm86 $HOME && cd && rm -rf miners
echo "Please Wait... "
sleep 2
echo -e "${red}Done Cek Dir android_arm86 And Run example : ./xmrig -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u YOUR_EMAIL -p x\n"
ls
fi

if [ $pilih -eq "2" ]; then
cd miners/xmrig && mv android_arm64 $HOME && cd && rm -rf miners
echo "Please Wait... "
sleep 2
echo -e "\n${red}Done Cek Dir android_arm64 And Run example : ./xmrig -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u YOUR_EMAIL -p x\n"
ls
fi

if [ $pilih -eq "3" ]; then
cd miners/xmrig && mv android_i686 $HOME && cd && rm -rf miners
echo "Please Wait... "
sleep 2
echo -e "\n${red}Done Cek Dir android_i686 And Run example : ./xmrig -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u YOUR_EMAIL -p x\n"
ls
fi
