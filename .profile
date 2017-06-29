# https://github.com/sstephenson/rbenv/wiki/Unix-shell-initialization

# ruby with ry and pkgsrc
# 1. fix OpenSSL
#    http://engineering.appfolio.com/appfolio-engineering/2016/6/17/configuring-ruby-on-macos-with-openssl
#    http://mac-dev-env.patrickbougie.com/ruby/
# 2. ry install https://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.gz mri-2.4.1 --with-openssl-dir=/opt/pkg


# disable SSL checking chrome
alias chrome_insecure="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --ignore-certificate-errors &"

# workaround https://jira.atlassian.com/browse/SRCTREE-3172
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'

export PATH="$HOME/.local/bin:/opt/pkg/bin:$PATH"
which ry &>/dev/null && eval "$(ry setup)"
# persist across updates
export CUSTOM_RUBY_VERSION=2.3.4


# precede command with space and it won't be added to history
export HISTCONTROL=ignorespace

XCODE_GIT=/Applications/Xcode.app/Contents/Developer/usr/share/git-core
source $XCODE_GIT/git-completion.bash
source $XCODE_GIT/git-prompt.sh
PS1='\w\[\033[31m\] $(__git_ps1 "(%s)")\n\[\033[01;34m\]$\[\033[00m\] '

# http://www.webupd8.org/2010/03/how-to-autocomplete-commands-preceded.html
# http://linux.about.com/library/cmd/blcmdl1_builtin.htm
# http://www.linuxjournal.com/content/more-using-bash-complete-command
alias sudo='sudo '
complete -cf sudo

# https://twitter.com/judofyr/status/416535759207034881
#export RUBYGEMS_GEMDEPS=-

# don't forget to set in ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist
export JAVA_HOME=/Library/Internet\ Plug\-Ins/JavaAppletPlugin.plugin/Contents/Home

###
# Goodies
###

# http://hints.macworld.com/article.php?story=2003030107340199
#alias h2d='printf "%d\n" ${1}'
#alias d2h='printf "0x%x\n" ${1}'

# https://github.com/rowanj/gitx/issues/210
#alias gitx="open -a /Applications/GitX.app ."

# https://medium.com/@mariociabarra/wifried-ios-8-wifi-performance-issues-3029a164ce94
# sudo ifconfig awdl0 down
# sudo ifconfig awdl0 up

# http://leonid.shevtsov.me/en/how-to-insert-the-encoding-utf-8-directive-automatically-in-ruby-1-9-files
#find . -iname '*.rb' -o -iname '*.rake' | \ # find all Ruby files
#xargs file -I | \ # file -I guesses the file's encoding
#grep utf-8 | \ # select the files we need
#sed -E 's/\:.+$//g' | \ # extract the filenames
#xargs -I {} sh -c "echo \"\\n# encoding: utf-8\\n\" >>{}" # finally, append the directive

# http://stackoverflow.com/questions/3777075/https-github-access
#GIT_CURL_VERBOSE=1
