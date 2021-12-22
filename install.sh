#!bin/bash
pacman -S sudo git fakeroot;
# Installing Chaotic-AUR
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com;
pacman-key --lsign-key FBA220DFC880C036;
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst';
printf "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf;
# End Chaotic-AUR
pacman -Syu;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;
cd ..;
rm -rf yay;
yay -Syu;
yay -S nautilus discord code brave-bin fish ttf-fira-code i3-gaps xorg-xrandr vim nano exfat-utils kitty polybar code-marketplace picom-git rustup texmaker texlive-most signal-desktop feh dmenu dunst cronie alsa-utils easyeffects btop flameshot curl keepasxc cmatrix neofetch;

code --install-extension dan-c-underwood.arm;
code --install-extension icrawl.discord-vscode;
code --install-extension PKief.material-icon-theme;
code --install-extension ryolambertdev.monokai-neon;
code --install-extension platformio.platformio-ide;
code --install-extension matklad.rust-analyzer;
code --install-extension be5invis.toml;

mkdir ~/Coding;
mkdir ~/Coding/C++;
mkdir ~/Coding/Rust;
mkdir ~/LaTeX;
mkdir ~/.config/rofi;
mkdir ~/.config/picom;
mkdir ~Coding/C++/Types-Header;
mkdir ~Coding/Rust/LibRapidRust;

git clone https://github.com/LibRapid/LibRapidRust ~/Coding/Rust/LibRapidRust;
git clone https://github.com/NervousNullPtr/Types-Header ~/Coding/C++/Types-Header;

curl https://wallpaperaccess.com/download/5k-hd-415851 -o ~/Bilder/Wallpaper.jpg;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/kitty.conf -o ~/.config/kitty/kitty.conf;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/i3-config -o ~/.config/i3/config;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/config.rasi -o ~/.config/rofi/config.rasi;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/picom.conf -o ~/.config/picom/picom.conf;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/config.fish -o ~/.config/fish/config.fish;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/polybar-config -o ~/.config/polyabr/config;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/layout.sh -o ~/layout.sh;
chmod +x ~/layout.sh;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/settings.json -o ~/.config/Code\ -\ OSS/User/settings.json;