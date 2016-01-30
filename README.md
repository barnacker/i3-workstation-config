# i3-workstation-config
##Ubuntu Gnome 15.10 on LVM(STRIPE)

After LiveCD Boot, setup the partitions:
```sh
$ sudo apt-get install system-config-lvm
```
Then install on your partition

##Install i3
```sh
$ echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
$ apt-get update
$ apt-get --allow-unauthenticated install sur5r-keyring
$ apt-get update
$ apt-get install i3
```

##Install Chrome
```sh
$ sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
$ apt-get update
$ sudo dpkg -i google-chrome-stable_current_amd64.deb #May give a dependency error
$ sudo apt-get -f install #Should fix it
```
