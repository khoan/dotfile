# precede command with space and it won't be added to history
export HISTCONTROL=ignorespace

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
PS1='\w\[\033[31m\] $(__git_ps1 "(%s)")\n\[\033[01;34m\]$\[\033[00m\] '

# https://github.com/rowanj/gitx/issues/210
#alias gitx="open -a /Applications/GitX.app ."

# http://www.webupd8.org/2010/03/how-to-autocomplete-commands-preceded.html
alias sudo='sudo '
complete -cf sudo

# https://raw.github.com/gma/bundler-exec/master/bundler-exec.sh
within-bundled-project()
{
    local dir="$(pwd)"
    while [ "$(dirname $dir)" != "/" ]; do
        [ -f "$dir/Gemfile" ] && return
        dir="$(dirname $dir)"
    done
    false
}

with_bundler()
{
    local bundler_installed=`which bundle > /dev/null 2>&1`
    if $bundler_installed && within-bundled-project; then
        echo bundle exec $@...
        bundle exec $@
    else
        $@
    fi
}

with_proxy()
{
    echo http_proxy=khoan:xxx@www-proxy.cse.unsw.edu.au:3128 $@...
    http_proxy=http://khoan:cuTo00@www-proxy.cse.unsw.edu.au:3128 $@
}

BUNDLED_COMMANDS="${BUNDLED_COMMANDS:-
cap
padrino
sidekiq
berks
foodcritic
}"

for CMD in $BUNDLED_COMMANDS; do
    if [[ $CMD != "bundle" && $CMD != "gem" ]]; then
        alias $CMD="with_bundler $CMD"
    fi
done

alias es_run="elasticsearch -f -D es.config=/usr/local/Cellar/elasticsearch/0.90.5/config/elasticsearch.yml"

###
# Goodies
###

# http://leonid.shevtsov.me/en/how-to-insert-the-encoding-utf-8-directive-automatically-in-ruby-1-9-files
#find . -iname '*.rb' -o -iname '*.rake' | \ # find all Ruby files
#xargs file -I | \ # file -I guesses the file's encoding
#grep utf-8 | \ # select the files we need
#sed -E 's/\:.+$//g' | \ # extract the filenames
#xargs -I {} sh -c "echo \"\\n# encoding: utf-8\\n\" >>{}" # finally, append the directive

# http://stackoverflow.com/questions/3777075/https-github-access
#GIT_CURL_VERBOSE=1

# Add heroku, RVM
# to PATH for scripting
PATH=/usr/local/heroku/bin:$PATH:$HOME/.rvm/bin
export PATH

#JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/"
#export JAVA_HOME
