#
# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# ZSH Config File by Arfan Zubi


# Autostart Hyprland at Login
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec Hyprland
fi

# Aliases
alias q='exit'
alias ..='cd ..'
alias ls='exa -l -F --icons --hyperlink'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias t='tree'
alias rm='rm -v'
alias open='xdg-open'

alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias nv='neovide'

alias gs='git status'
alias ga='git add -A'
alias gc='git commit'
alias gpll='git pull'
alias gpsh='git push'
alias gd='git diff'
alias gl='git log --stat --graph --decorate --oneline'

alias pu='sudo pacman -Syu'
alias pi='sudo pacman -S'
alias pr='sudo pacman -Rsu'
alias pq='sudo pacman -Qe'
alias autoclean='sudo pacman -Qtdq | sudo pacman -Rns - && yay -Sc'

alias cr='cargo run'
alias cb='cargo build'
alias ct='cargo test'
alias clippy='cargo clippy'

alias lock='swaylock'
alias standby='systemctl suspend'

alias ff='fastfetch'
alias b='bat'
alias rr='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias z='zathura'

# Colored output
#alias ls='ls -laGH --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'

# Colored pagers
export LESS='-R --use-color -Dd+r$Du+b'
export MANPAGER='less -R --use-color -Dd+r -Du+b'
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export BAT_THEME='Catppuccin Latte'

# Setting Default Editor
export EDITOR='nvim'
export VISUAL='nvim'

# File to store ZSH history
export HISTFILE=~/.zsh_history

# Number of commands loaded into memory from HISTFILE
export HISTSIZE=1000

# Maximum number of commands stores in HISTFILE
export SAVEHIST=1000

# Setting default Ranger RC to false to avoid loading it twice
export RANGER_LOAD_DEFAULT_RC='false'

# Loading ZSH modules
autoload -Uz compinit
autoload -Uz vcs_info # Git

# Style control for completion system and VCS
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion:*' rehash true                      # Rehash so compinit can automatically find new executables in $PATH
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats 'on %F{red} %b%f '    # Set up Git Branch details into prompt

# Match dotfiles without explicitly specifying the dot
compinit
_comp_options+=(globdots)

# Load Version Control System into prompt
precmd() { vcs_info }

# Prompt Appearance
setopt PROMPT_SUBST

PS1='%B%F{blue}❬%n%f@%F{blue}%m❭%f %F{blue} %1~%f%b ${vcs_info_msg_0_} '

# ZSH profile
source ~/.profile

# XDG user dirs
source ~/.config/user-dirs.dirs

# Keybindings for FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# ZSH Autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH Syntax Highlighting - must be at the end of .zshrc!
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Launch pfetch when opening new terminal
pfetch
