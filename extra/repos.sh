# Lunitely Repository
curl https://repo.hackrland.dev | sudo bash

# Chaotic AUR
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
sudo bash -c 'echo "" >> /etc/pacman.conf'
sudo bash -c 'echo "[chaotic-aur]" >> /etc/pacman.conf'
sudo bash -c 'echo "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf'
sudo pacman -Syyu

# BlackArch
curl -O https://blackarch.org/strap.sh
echo bbf0a0b838aed0ec05fff2d375dd17591cbdf8aa strap.sh | sha1sum -c
sed -i '/pacman.*blackarch-officials\|blackarch-officials.*pacman/d' ./strap.sh
chmod +x strap.sh
sudo ./strap.sh
rm strap.sh
sudo pacman -Syyu
