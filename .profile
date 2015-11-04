# https://github.com/sstephenson/rbenv/wiki/Unix-shell-initialization



eval "$(ry setup)"

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

# http://www.webupd8.org/2010/03/how-to-autocomplete-commands-preceded.html
alias go='cd ~/clients/'

# https://twitter.com/judofyr/status/416535759207034881
#export RUBYGEMS_GEMDEPS=-

# don't forget to set in ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist
export JAVA_HOME=/Library/Internet\ Plug\-Ins/JavaAppletPlugin.plugin/Contents/Home

###
# Goodies
###

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
