# Linux setup script

echo "*** Begin Setup ***"

echo "*** Update ***"
sudo apt update && sudo apt upgrade

# install important packages
echo "*** Install Packages ***"

sudo apt install wget -y
sudo apt install curl -y
sudo apt install ssh -y
sudo apt install tilix -y
sudo apt install vim -y
sudo apt install g++ -y
sudo apt install python3 -y


# download and save configs
echo "*** Download Configs ***"

# set up .vimrc
rm ~/.vimrc
rm -rf ~/.vim
mkdir ~/.vim/undodir -p

wget https://raw.githubusercontent.com/Luca-Mueller/LinuxSetup/9b400e69ec68a0b7a2c5060008b690e2a048eed0/.vimrc
