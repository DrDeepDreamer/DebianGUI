!#/bin/bash
sudo apt update -y; sudo apt upgrade -y; sudo apt autoremove -y; sudo apt autoclean -y
sudo apt install python3 -y
sudo apt install python3-venv -y
sudo apt install git -y
sudo apt install nano -y
git clone https://github.com/DrDeepDreamer/teplozema80.git
cd /teplozema80
python3 -m venv venv
source venv/bin/activate
pip install -r requirments.txt
