#!/bin/bash

# Eternal bash history.
# ---------------------
# Comment out HISTSIZE and HISTFILESIZE of user's .bashrc.
if grep -q ^HISTSIZE ~/.bashrc; then sed -i 's/HISTSIZE=.*/#&/g' ~/.bashrc; fi
if grep -q ^HISTFILESIZE ~/.bashrc; then sed -i 's/HISTFILESIZE=.*/#&/g' ~/.bashrc; fi

# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=-1
export HISTSIZE=-1
export HISTTIMEFORMAT="[%F %T] "

# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history

# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"