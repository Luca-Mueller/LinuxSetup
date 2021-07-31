# Linux setup script

echo "*** Begin Setup ***"


# install important packages
echo "*** Install Packages ***"

sudo apt update

sudo apt install wget -y
sudo apt install ssh -y
sudo apt install tilix -y
sudo apt install vim -y
sudo apt install g++ -y
sudo apt install python3.8 -y

# download and save configs
echo "*** Download Configs ***"
