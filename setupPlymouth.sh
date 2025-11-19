echo "installing required packages"

sudo dnf install plymouth plymouth-plugin-script plymouth-theme-charge unzip curl

mkdir ~/pipa-plymouth-files

curl -L -o ~/pipa-plymouth-files/charge-new.zip "https://github.com/qzcs3/plymouth-fedora-pipa/raw/main/src/charge-new.zip"

unzip ~/pipa-plymouth-files/charge-new.zip -d ~/pipa-plymouth-files/

echo "make it landscape"

sudo rm -rf /usr/share/plymouth/themes/charge/*

sudo cp -r ~/pipa-plymouth-files/charge/* /usr/share/plymouth/themes/charge/

echo "enable boot animation"

sudo plymouth-set-default-theme charge -R

echo "done"
