# export
export EDITOR="nvim"
export TERM="kitty"
export VISUAL="nvim"
export BAT_THEME="Catppuccin-mocha"

# aliases
alias polkit="/usr/lib/polkit-gnome/./polkit-gnome-authentication-agent-1"
alias cat="bat"

alias vim="nvim"
alias ls="eza --icons --tree --level=1"

# configs
alias i3c="vim ~/.config/i3/config"
alias kc="vim ~/.config/kitty/kitty.conf"
alias zc="vim ~/.zshrc"
alias pc="vim ~/.config/picom/picom.conf"
alias bsc="cd ~/.config/bspwm/ && vim bspwmrc"
alias sxc="vim ~/.config/sxhkd/sxhkdrc"
alias neoc="vim ~/.config/neofetch/config.conf"
alias poc="vim ~/.config/polybar/config.ini"

# easy of use 
alias feh="feh --scale-down"
alias cd2="cd ../../"
alias cd3="cd ../../../"
alias conf="cd ~/.config/ && ls"
alias update="sudo pacman -Syu"
alias grep="grep --color=auto"
alias df="df -h"
alias p="sudo pacman"
alias drive="cd /mnt/TOSHIBA/ && ls"
alias list="pacman -Qe"
alias listn="pacman -Qq | wc -l"
alias picom="picom --backend glx -b"
alias walls="cd ~/Pictures/Wallpapers/ && ls"
alias music="cd ~/Music/ && ls"
alias pics="cd ~/Pictures/ && ls"
alias down="cd ~/Downloads/ && ls"
alias listsinks="pactl list sinks short | cut -f2"
alias listsources="pactl list sources short | cut -f2"
alias toipe="~/Downloads/toipe/toipe"
alias bookmarks="vim ~/Documents/neorg/bookmarks.norg"

# kill
alias kp="pkill polybar"
alias kpi="pkill picom"
alias ks="pkill steam"

# eye candy 
alias pokemon="pokemon-colorscripts"
alias kyurem="pokemon-colorscripts -n kyurem --no-title"
alias mew="pokemon-colorscripts -s --no-title -n mew"
alias catppuccin="vim ~/.config/catppuccin.txt"

# sources
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-completions start
autoload -U compinit promptinit
promptinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
fpath=($HOME/.zsh/zsh-completions/src $fpath)

# functions
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
cd () {builtin cd "$@" && ls}


# starship
eval "$(starship init zsh)"

# start
neofetch
#pokemon-colorscripts -s --no-title -n mew
set -o vi
