# Compatible with server configs
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export TZ=CET
export PAGER="less"
export LESS="-FRSX"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vim'
fi

# adding .bin as a source of executables
export PATH="$HOME/.bin:$PATH"

# CLI customisation
alias ls='exa' # see https://github.com/ogham/exa
alias cat='bat'
alias top=bpytop
alias diff=icdiff
alias mc='mc -u'

mkcd() { mkdir -p "$@" && cd "$@"; }
gitall() { find . -type d -depth 1 -print -exec git -C {} "$@"  \; }

autoload -U compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ ! -f ~/.zprofile_local ]] || source ~/.zprofile_local

source $HOME/.dotfiles/dev/.all