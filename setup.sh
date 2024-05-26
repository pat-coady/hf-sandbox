sudo apt update
# install chromumium as browser that selenium driver will connect to
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install -y ./google-chrome-stable_current_amd64.deb

sudo apt install -y python3 python3-pip python3-notebook
sudo apt install -y python3-selenium
export JUPYTER_CONFIG_DIR="."