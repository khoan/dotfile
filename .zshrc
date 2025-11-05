# Edit Current Command Line with Vim
# https://bugfactory.io/blog/z-shell-tip-edit-current-command-line-with-vim/
export EDITOR=vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\033' edit-command-line

# Simple prompt
fpath+=$HOME/lib/sindresorhus/pure
autoload -U promptinit && promptinit
prompt pure

# direnv hook
eval "$(direnv hook zsh)"

# Version manager
#source $HOME/.asdf/asdf.sh
#fpath=(${ASDF_DIR}/completions $fpath)
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

# Auto complete: git, asdf, etc
autoload -Uz compinit && compinit
eval "$(aws-vault --completion-script-zsh)"

# Created by `pipx` on 2023-09-28 06:36:10
#export PATH="$PATH:/Users/khoan/.local/bin"
