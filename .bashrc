# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export PATH

# User specific aliases and functions

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ -f ~/.environment ]; then
    . ~/.environment
fi

if command -v starship &> /dev/null
then
    eval "$(starship init bash)"
fi


bind '"\e[1;5A":history-search-backward'
bind '"\e[1;5B":history-search-forward'

