### Wordpress + XAMPP
```
# Download & Unzip Wordpress
# https://wordpress.org/download/
cd $HOME/Downloads && wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz

# Download & Install XAMPP
# https://www.apachefriends.org/download.html
# https://www.apachefriends.org/faq_linux.html
chmod 755 xampp-linux-*-installer.run
sudo ./xampp-linux-*-installer.run

http://127.0.0.1/phpmyadmin/
```

#### ALFA AWUS036ACH Fix
```
sudo add-apt-repository ppa:kelebek333/kablosuz && sudo apt update && sudo apt install rtl8812au-dkms 
```

#### Full update, upgrade, dist-upgrade, autoremove, & clean
```
sudo apt update -y && apt full-upgrade -y && apt --with-new-pkgs upgrade -y && apt dist-upgrade -y && apt autoremove -y && apt autoclean -y && apt clean -y
```

#### Fixing Time / Timezone
```
sudo apt install ntpdate && ntpdate in.pool.ntp.org && dpkg-reconfigure tzdata
```

#### Install Librewolf (Debian Based)
```
sudo apt update && sudo apt install -y wget gnupg lsb-release apt-transport-https ca-certificates

distro=$(if echo " una bookworm vanessa focal jammy bullseye vera uma " | grep -q " $(lsb_release -sc) "; then lsb_release -sc; else echo focal; fi)

wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg

sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF

sudo apt update

sudo apt install librewolf -y
```

#### ohmyzsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

~/.zshrc

ZSH_THEME="agnoster"

restart
```

#### yt-dlp + FFmpeg
```
sudo apt install ffmpeg && curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && sudo chmod a+rx /usr/local/bin/yt-dlp && yt-dlp -U
```

### Software Defined Radio, Part 6: Building a Cellphone IMSI Catcher (Stingray)
```
# https://www.hackers-arise.com/post/software-defined-radio-part-6-building-a-imsi-catcher-stingray

sudo apt-get install -y cmake autoconf libtool pkg-config build-essential python-docutils libcppunit-dev swig doxygen liblog4cpp5-dev gnuradio-dev gr-osmosdr libosmocore-dev liborc-0.4-dev swig

sudo git clone https://git.osmocom.org/gr-gsm 

cd gr-gsm && mkdir build && cd build && cmake .. && make -j 4 && sudo make install && sudo ldconfig

sudo echo 'export PYTHONPATH=/usr/local/lib/python3/dist-packages/:$PYTHONPATH' >> ~/.bashrc

sudo apt install kalibrate-rtl

sudo git clone https://github.com/Oros42/IMSI-catcher.git

sudo kal -s GSM850 -g 45 && grgsm_livemon -f 889.0M -g 45

cd IMSI-catcher && sudo python simple_IMSI-catcher.py -s
```

#### VLC
```
sudo apt install vlc

Run as root:
sudo sed -i 's/geteuid/getppid/' /usr/bin/vlc
```

#### How to null out outputs
```
command &>/dev/null
```

#### Clear all terminal history & reset
```
cat /dev/null > ~/.bash_history && history -c && reset
```

#### Vim commands
```
Esc – switch to command mode
:w – write out changes that were made
:q – exit Vim
:q! – exit Vim and discard any changes
:wq – saves the changes, and exits Vim
:x – save the changes made, and exits Vim
```

#### Installing Waydroid
```
# if you're on debian run this
export distro=bullseye

# or if you're on ubuntu run this
export distro=focal


sudo curl https://repo.waydro.id/waydroid.gpg --output /usr/share/keyrings/waydroid.gpg
echo "deb [signed-by=/usr/share/keyrings/waydroid.gpg] https://repo.waydro.id/ ${distro} main" | \
  sudo tee /etc/apt/sources.list.d/waydroid.list

sudo apt update
sudo apt install -y \
  build-essential cdbs devscripts equivs fakeroot \
  git git-buildpackage git-lfs \
  libgbinder-dev

sudo wget https://raw.githubusercontent.com/MrCyjaneK/waydroid-build/main/build_changelog \
  -O /usr/bin/build_changelog
sudo chmod +x ${_}

mkdir ~/build-packages
cd ${_}
git clone https://github.com/waydroid/gbinder-python
cd gbinder-python
build_changelog
sudo mk-build-deps -ir -t "apt -o Debug::pkgProblemResolver=yes -y --no-install-recommends"
sudo debuild -b -uc -us
sudo apt install -f -y ../*.deb

sudo apt remove libgbinder-dev gbinder-python-build-deps git-lfs fakeroot equivs devscripts cdbs
# you can remove git and build-essential packages too
sudo apt autoremove
sudo rm /usr/bin/build_changelog

sudo apt install waydroid -y
```

#### Installing Tor Browser
```
https://www.howtogeek.com/423866/how-to-install-and-use-the-tor-browser-on-linux/
```

#### Install Tor Service + How to use
```
sudo apt install tor

sudo systemctl status tor.service
sudo systemctl start tor.service
sudo systemctl stop tor.service
```

#### Proxychains
```
proxychains firefox duckduckgo.com
```

#### Spoofing MAC Address
```
ifconfig wlan0 down

# Random MAC Address
macchanger -r wlan0

# Shows specified MAC Address of NIC
macchanger -s wlan0

ifconfig wlan0 up
```

#### Install Alfa card drivers:
```
sudo apt install dkms && sudo apt install realtek-rtl88xxau-dkms && sudo reboot now
sudo git clone https://github.com/aircrack-ng/rtl8812au && cd rtl8812au/ && make && sudo make install && sudo rm -rf rtl8812au
```

#### Installing Wifite:
```
sudo git clone https://github.com/kimocoder/wifite2.git && sudo pip install pytest-flake8 && sudo apt install hcxdumptool && sudo apt install hcxtools && sudo apt-get install libpcap-dev && sudo apt-get install python2.7-dev libssl-dev zlib1g-dev libpcap-dev && sudo git clone https://github.com/JPaulMora/Pyrit.git && cd Pyrit && sudo python3 setup.py clean && sudo python3 setup.py build && sudo python3 setup.py install && sudo apt clean -y && sudo apt autoremove -y
```

#### Awesome GitHub Tools:
```
git clone https://github.com/v1s1t0r1sh3r3/airgeddon
git clone https://github.com/aircrack-ng/aircrack-ng
git clone https://github.com/aircrack-ng/mdk4
git clone https://github.com/yt-dlp/yt-dlp
git clone https://github.com/ohmyzsh/ohmyzsh
git clone https://github.com/hashcat/hashcat
git clone https://github.com/lanmaster53/recon-ng
git clone https://github.com/s0md3v/ReconDog
git clone https://github.com/laramies/theHarvester
git clone https://github.com/zxllkada/Get-instagram-users-info---Any-instagram-account
git clone https://github.com/martinvigo/email2phonenumber
git clone https://github.com/aircrack-ng/rtl8812au
git clone https://github.com/thewhiteh4t/FinalRecon
git clone https://github.com/khast3x/h8mail
git clone https://github.com/sherlock-project/sherlock
git clone https://github.com/threat9/routersploit
git clone https://github.com/HiroshiManRise/anonym8
git clone https://github.com/m4ll0k/Infoga
```

#### Advanced Linux Resources (Hardening)
[1](https://madaidans-insecurities.github.io/guides/linux-hardening.html) - 
[2](https://eldritchdata.neocities.org) - 
[3](https://vez.mrsk.me/linux-hardening.html)
