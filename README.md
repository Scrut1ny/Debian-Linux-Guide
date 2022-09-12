#### Updating
```
sudo apt update -y && apt full-upgrade -y && apt --with-new-pkgs upgrade -y && apt dist-upgrade -y && apt autoremove -y && apt autoclean -y && apt clean -y
```

#### ohmyzsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

~/.zshrc

ZSH_THEME="agnoster"

restart
```

#### Fixing Time / Timezone
```
sudo apt install ntpdate && ntpdate in.pool.ntp.org && dpkg-reconfigure tzdata
```

#### yt-dlp + FFmpeg
```
sudo apt install ffmpeg && curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && sudo chmod a+rx /usr/local/bin/yt-dlp && yt-dlp -U
```

### Software Defined Radio, Part 6: Building a Cellphone IMSI Catcher (Stingray)
```
# https://www.hackers-arise.com/post/software-defined-radio-part-6-building-a-imsi-catcher-stingray

sudo apt-get install -y cmake autoconf libtool pkg-config build-essential python-docutils libcppunit-dev swig doxygen liblog4cpp5-dev gnuradio-dev 
gr-osmosdr libosmocore-dev liborc-0.4-dev swig

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

#### Full update, upgrade, dist-upgrade, autoremove, & clean:
```
sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && apt autoremove -y && apt clean -y
```

#### Fixing tzdata
```
sudo apt install ntpdate && apt ntpdate in.pool.ntp.org && apt dpkg-reconfigure tzdata
```

#### Install LibreWolf
```
https://download.opensuse.org/repositories/home:/bgstack15:/aftermozilla/Debian_Unstable/amd64/
sudo dpkg -i librewolf_103.0-1_amd64.deb
```

#### Installing Tor Browser
```
https://www.howtogeek.com/423866/how-to-install-and-use-the-tor-browser-on-linux/
```

#### Install Tor Service + How to use
````
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
