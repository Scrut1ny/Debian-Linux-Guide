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

```

```

```

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
````
cat /dev/null > ~/.bash_history && history -c && reset
````

#### Vim commands
````
Esc – switch to command mode
:w – write out changes that were made
:q – exit Vim
:q! – exit Vim and discard any changes
:wq – saves the changes, and exits Vim
:x – save the changes made, and exits Vim
````
