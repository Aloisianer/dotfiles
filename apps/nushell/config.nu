source starship.nu
source zoxide.nu

$env.config.buffer_editor = "nano"
$env.config.show_banner = false

alias grep = ugrep
alias bat = bat --force-colorization --theme base16-256
alias eza = eza -F --icons=always --all -x

alias ls = eza
alias l = eza -l
alias cd = z
alias cat = bat
alias _cat = /bin/cat
alias vencord-installer = sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"
alias searchfs = sudo find / -name 

alias hssh = ~/.config/hypr/apps/zsh/hssh.sh
