#### Updating
```
sudo apt update -y && apt full-upgrade -y && apt --with-new-pkgs upgrade -y && apt dist-upgrade -y && apt autoremove -y && apt autoclean -y && apt clean -y
```

#### Fixing Time / Zone
```
sudo apt install ntpdate && apt ntpdate in.pool.ntp.org && apt dpkg-reconfigure tzdata
```
