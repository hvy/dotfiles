# Color the terminal output, e.g. ls
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# Make the prompt more simple, to only print the cwd
export PS1='\w \$ '

# Aliases
alias ll='ls -la'

# Exports
export HISTCONTROL='ignoredups' # Remove consecutive history entries
export GREP_OPTIONS='--color=auto' # Highlight grep matches

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
