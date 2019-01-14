eric_version="19.01"

rm -rf ericinst/
unzip -o eric6-$eric_version.zip -d ericinst
sudo python3.6 ericinst/eric6-$eric_version/install.py
sudo rm -rfd ericinst/
cp -rf eric6.ini $HOME/.config/Eric6/