# Color the terminal output, e.g. ls
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# Make the prompt more simple, to only print the cwd
export PS1='\w \$ '

# Aliases
alias ll='ls -la'
alias c='clear'
alias v='vim'
alias sv='sudo vim'
alias h='history'
alias f='find . -name \* -print | grep'
alias path='echo -e ${PATH//:/\\n}'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Exports
export HISTCONTROL='ignoredups' # Remove consecutive history entries
export GREP_OPTIONS='--color=auto' # Highlight grep matches

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

