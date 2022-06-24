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

#### Vim commands
````
Esc – switch to command mode
:w – write out changes that were made
:q – exit Vim
:q! – exit Vim and discard any changes
:wq – saves the changes, and exits Vim
:x – save the changes made, and exits Vim
````
