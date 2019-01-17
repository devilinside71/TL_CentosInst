cwd=$(pwd)
eric_version="19.01"

# Python
sudo yum -y install https://rhel7.iuscommunity.org/ius-release.rpm
sudo yum -y install python36u-pip
sudo yum -y install python36u-devel
sudo yum -y install yum-plugin-replace
sudo yum -y replace git --replace-with git2u
sudo yum -y install git2u-gui
sudo pip3.6 install --upgrade pip
sudo pip3.6 install pyqt5
sudo pip3.6 install PyQt5
sudo pip3.6 install pyqt5-tools
sudo pip3.6 install autopep8
sudo pip3.6 install pep8
sudo pip3.6 install rope
sudo pip3.6 install pywin32
sudo pip3.6 install wheel
sudo pip3.6 install cx_Freeze --upgrade
sudo pip3.6 install QScintilla
sudo pip3.6 install pylint
sudo pip3.6 install pytube
sudo pip3.6 install six
sudo pip3.6 install sip
sudo pip3.6 install stem
sudo pip3.6 install ics
sudo pip3.6 install libpff-python
pip3.6 list




# VSCode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo yum check-update
sudo yum -y install code
code --install-extension ms-python.python
code --install-extension zhoufeng.pyqt-integration
code --install-extension njpwerner.autodocstring
code --install-extension file-icons.file-icons
code --install-extension hookyqr.beautify
code --install-extension stevencl.adddoccomments
code --install-extension formulahendry.code-runner
code --install-extension visualstudioexptteam.vscodeintellicode
cp -rf settings.json $HOME/.config/Code/User/



# Qt
# sudo sh -c './qt-unified-linux-x64-3.0.6-online.run'
sudo yum -y install qt5-qtbase-devel
sudo yum -y install harfbuzz
sudo yum -y install qt5-designer
sudo yum -y install qt5-linguist
alias designer='designer-qt5'
alias linguist='linguist-qt5'

# Eric Python IDE
rm -rf ericinst/
unzip -o eric6-$eric_version.zip -d ericinst
sudo python3.6 ericinst/eric6-$eric_version/install.py
sudo rm -rfd ericinst/
cp -rf eric6.ini $HOME/.config/Eric6/

sudo cp -rf tl_pyuic.py /usr/lib64/python3.6/
sudo cp -rf PyuiCentos.sh /usr/bin/
sudo chmod u=rwx,g=rx,o=rx /usr/bin/PyuiCentos.sh
sudo chmod u=rwx,g=r,o=r /usr/lib64/python3.6/tl_pyuic.py

# TOR
sudo yum -y install tor
sudo service tor start
tar -xvJf tor-browser-linux64-8.0.4_en-US.tar.xz -C $HOME/


# DoubleCommander
cd /etc/yum.repos.d/
sudo wget https://download.opensuse.org/repositories/home:Alexx2000/CentOS_7/home:Alexx2000.repo
sudo yum -y install doublecmd-qt
cd $cwd
cp -rf icons/ $HOME/.config/doublecmd/
cp -rf doublecmd.xml $HOME/.config/doublecmd/

# VLC
sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
sudo yum -y install vlc
sudo yum -y install ffmpeg


