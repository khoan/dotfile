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

# Version manager
source $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

# Auto complete: git, asdf, etc
autoload -Uz compinit && compinit
