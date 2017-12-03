# Bash Profile script for Git Bash on Windows

# Create alias for "ll" command, mainly for habit
alias ll='ls -alG'

# If .bashrc file exists, use it
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# If Git Prompt exists, setup up prompt
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    export PS1=' \e[36m\u\e[35m:\e[33m\W\e[32;1m $(__git_ps1 "(%s)") \e[37;1m$ \e[0m'
fi
