source ~/.config/zsh/starship
source ~/.config/zsh/suggestions
source ~/.config/zsh/syntax/init
source ~/.config/zsh/completions/init

autoload -U compinit; compinit

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

HISTFILE=~/.zsh-history
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

alias grep='ugrep'
alias bat='bat --force-colorization --theme base16-256'
alias eza='eza -F --icons=always --all -x'

alias ls='eza'
alias l='eza -l'
alias cat='bat'
alias _cat='/bin/cat'
alias fzf='fzf --preview "bat --force-colorization --theme base16-256"'
alias vencord-installer='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias searchfs='sudo find / -name '

unsetopt PROMPT_SP
export TERM=xterm-256color
