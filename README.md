# Hyprland Dotfiles
### Apps / Configurations:
- ZSH (oh-my-posh)
- Waybar
- Rofi
- Hyprlock
- Alacritty

## Installation
1. `cd ~/.config`, move into your config directory
2. `mv hypr hypr.bak`, create a backup of your files. Do this in a TTY and more importantly logout of Hyprland or else Hyprland will create a new default configuration!
3. `git clone https://github.com/FerrousInk/dotfiles hypr`, clone the dotfiles in place of the last dotfiles
4. `hypr/deps.sh`, install the dependencies, when prompted to install audio or zsh dependencies that are not need, just cancel them by pressing Ctrl+C

#### ZSH Configuration
1. `nano ~/.zshrc`, add `source ~/.config/hypr/apps/zsh/zshrc` and press Ctrl+S and then Ctrl+X
2. Open a new Terminal and wait until the prompt is displayed

#### Good Audio
1. `nano ~/.config/hypr/hyprland.conf` and uncomment `# source = ~/.config/hypr/audio.conf`

## Pictures
![Desktop](assets/desktop.jpg)
