# Hyprland Dotfiles

## Installation
1. `cd`, go to your home directory
2. `git clone https://github.com/Aloisianer/dotfiles .dotfiles`, clone the dotfiles into your home directory and hide them
3. `cd .dotfiles`, go into the dotfiles
4. `stow .`, use GNU Stow to easly manage the dotfiles (`pacman -S stow`)

## Dependencies
1. `~/.dotfiles/extra/deps/hyprland.sh`, for Hyprland
2. `~/.dotfiles/extra/deps/amd.sh`, for Hyprland + AMD (includes main Hyprland deps)
3. `~/.dotfiles/extra/deps/nvidia.sh`, for Hyprland + NVIDIA (includes main Hyprland deps)
4. `~/.dotfiles/extra/deps/terminal.sh`, for Terminal (ZSH and NuShell)
5. `~/.dotfiles/extra/deps/coolstuff.sh`, for Cool Stuff
### Battery
> To enable Hypridle (for diming the screen, etc) run `systemctl --user enable hypridle`
