# i3-workstation-config
##Ubuntu Gnome 15.10 on LVM(STRIPE)
* After LiveCD Boot, setup the partitions

  ```sh
  $ sudo apt-get install system-config-lvm
  ```
  
* Then setup your virtual partitions and install Ubuntu on that.
* Install i3

  ```sh
  $ echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
  $ apt-get update
  $ apt-get --allow-unauthenticated install sur5r-keyring
  $ apt-get update
  $ apt-get install i3
  ```
  
* Disable Nautilus Desktop Background

  ```sh
  $ gsettings set org.gnome.desktop.background show-desktop-icons false
  ```
  
* Install pa-applet for Volume Controls
  https://github.com/fernandotcl/pa-applet
* Dark GTK Ambiance

  ```sh
  $ sudo add-apt-repository ppa:ravefinity-project/ppa
  $ sudo apt-get update
  $ sudo apt-get install ambiance-blackout-colors
  ```
  
* Install feh
* Install San Francisco Display Font
  * https://github.com/supermarin/YosemiteSanFranciscoFont
* Install infinality Font rendering engine
  * http://www.webupd8.org/2013/06/better-font-rendering-in-linux-with.html
  
  ```sh
  $ sudo add-apt-repository ppa:no1wantdthisname/ppa
  $ sudo apt-get update
  $ sudo apt-get upgrade
  $ sudo apt-get install fontconfig-infinality
  ```
  
  * Activate OSX render mode (or whatever you prefer)
    
    ```sh
    $ sudo bash /etc/fonts/infinality/infctl.sh setstyle
    ```
    
* Install Chrome
  
  ```sh
  $ sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
  $ apt-get update
  $ sudo dpkg -i google-chrome-stable_current_amd64.deb #May give a dependency error
  $ sudo apt-get -f install #Should fix it
  ```

* To force install Pure when you are stuck with permissions error

```sh
  $ npm install --global pure-prompt --allow-root --unsafe-perm=true
  ```


* to review and cleanup
```sh
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install --global pure-prompt --allow-root --unsafe-perm=true
vim .zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
vim .zshrc
source .zshrc
sudo apt install git curl vim
sudo apt install borgbackup
sudo apt install ssh
sudo apt install gnome-disk-utility
cd bumblebee
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake
sudo apt install python
sudo apt install python-pip
pip install requests
pip install psutil
pip install netifaces
pip install sensors
pip install pyyaml
sudo apt install nitrogen
sudo apt install rofi
cd Documents/code/i3-gaps/
git pull
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
apt-mark i3
apt-mark hold i3
sudo apt-mark hold i3
sudo apt install parcellite
sudo apt install fonts-powerline
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install google-chrome-stable
sudo apt install compton
xrandr
vim ~/.config/i3/config
sudo apt install fonts-font-awesome
ssh user@server -t tmux new -A -s name
  ```
