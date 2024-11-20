HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

unsetopt BEEP

eval "$(/opt/homebrew/bin/brew shellenv)"

cd
eval "$(starship init zsh)"

source ~/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

source <(fzf --zsh)

PATH="/Users/gojo/go/bin:$PATH"
PATH="/opt/homebrew/opt/python@3.12/bin/python3:$PATH"

eval "$(zoxide init zsh)"
function z () {
    __zoxide_z "$@"
}

alias ls='eza'
alias ll='eza -lah -g --icons --git --git-ignore'
alias llt='eza -lah -g --icons --git --tree -L2 --git-ignore'
alias t='tmux'
alias cd='z'
alias n='nvim'
alias ans='source ~/dev/venv/ansible/bin/activate'
alias bas='source ~/dev/venv/basicenv/bin/activate'

export EDITOR=vim
export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"

[[ ! -v TMUX ]] && tmux
