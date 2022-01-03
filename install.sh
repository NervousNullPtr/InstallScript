#!/usr/bin/bash
sudo pacman -S opendoas git fakeroot;
# Installing Chaotic-AUR
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com;
sudo pacman-key --lsign-key FBA220DFC880C036;
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst';
sudo printf "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf;
# End Chaotic-AUR
sudo pacman -Syu;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;
cd ..;
rm -rf yay;
yay -Syu;
yay -S nautilus wget playerctl code qelectrotech brave-bin fish ttf-fira-code i3-gaps xorg-xrandr vim nano exfat-utils kitty polybar code-marketplace picom-git rustup texmaker texlive-most signal-desktop feh dmenu dunst alsa-utils pipewire pipewire-pulse btop flameshot curl keepasxc cmatrix neofetch;
yay -Rns NetworkManager;

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
mkdir ~/Coding/Shell;
mkdir ~/LaTeX;
mkdir ~/Elektro-CAD;
mkdir ~/.config/rofi;
mkdir ~/.config/picom;
mkdir ~Coding/C++/Types-Header;
mkdir ~Coding/Rust/LibRapidRust;

git clone https://github.com/LibRapid/LibRapidRust ~/Coding/Rust/LibRapidRust;
git clone https://github.com/NervousNullPtr/Types-Header ~/Coding/C++/Types-Header;
git clone https://github.com/NervousNullPtr/installscript ~/Coding/Shell/installscript;

wget https://wallpaperaccess.com/download/5k-hd-415851 -o ~/Bilder/Wallpaper.jpg;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/QElectroTech.conf -o ~/.config/QElectroTech/QElectroTech.conf;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/btop.conf -o ~/.config/btop/btop.conf;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/kitty.conf -o ~/.config/kitty/kitty.conf;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/i3-config -o ~/.config/i3/config;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/config.rasi -o ~/.config/rofi/config.rasi;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/picom.conf -o ~/.config/picom/picom.conf;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/config.fish -o ~/.config/fish/config.fish;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/polybar-config -o ~/.config/polybar/config;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/layout.sh -o ~/layout.sh;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/doas.conf -o /etc/doas.conf;
chmod +x ~/layout.sh;
curl https://raw.githubusercontent.com/NervousNullPtr/InstallScript/master/settings.json -o ~/.config/Code\ -\ OSS/User/settings.json;

yay --sudo doas --save;
yay -Rns sudo;

systemctl --user enable pipewire pipewire-pulse;