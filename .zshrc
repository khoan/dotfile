fpath+=$HOME/lib/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

source $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit
compinit
