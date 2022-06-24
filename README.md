#### Updating
```
sudo apt update -y && apt full-upgrade -y && apt --with-new-pkgs upgrade -y && apt dist-upgrade -y && apt autoremove -y && apt autoclean -y && apt clean -y
```

#### Fixing Time / Zone
```
sudo apt install ntpdate && ntpdate in.pool.ntp.org && dpkg-reconfigure tzdata
```

#### YT-DLP + FFMPEG
```
sudo apt install ffmpeg && curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && sudo chmod a+rx /usr/local/bin/yt-dlp
```
