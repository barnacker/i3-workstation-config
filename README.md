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
