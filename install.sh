#!bin/bash
sudo -i;
pacman -S git;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;
cd ..;
rm -rf yay;
exit;
yay -S nautilus discord code brave-bin fish kitty code-marketplace btop flameshot keepasxc cmatrix neofetch;

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
