~/.dotfiles/extra/deps/hyprland.sh
paru -Syu \
nvidia-open-dkms \
nvidia-utils \
lib32-nvidia-utils

echo Make sure to install the -headers package for your kernel, example:
echo paru -S linux-zen-headers
echo paru -S linux-headers
