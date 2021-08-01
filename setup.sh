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
mv .vimrc ~/.vimrc

