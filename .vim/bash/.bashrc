umask 02

if [ -n "$BASH_VERSION" ]; then
     export PS1='\u@\h:\w\$ '
 else
     if [ "$UID" -eq 0 ]; then
         export PROMPT='[%f%n@%m]:%~%# '
     else
         export PROMPT='[%f%n@%m]:%~\$ '
     fi
 fi

 # directory navigation
 alias ..="cd .."
 alias ...="cd ../.."
 alias ....="cd ../../.."
 alias .....="cd ../../../.."

 # reload
 alias ls='exa --icons --color=always'
 alias la='exa -a --icons --color=always'
 alias ll='exa -alh --group-directories-first --color=always'
 alias tree='exa --tree -alh --icons --color=always'

 alias today='date -u +%Y-%m-%d'

 alias rl="source ~/.bashrc; echo '~/.bashrc reloaded.'"

 if test -d "/usr/local/bin"; then
     PATH="/usr/local/bin:$PATH"
 fi

 if test -d "$HOME/.local/bin"; then
     PATH="$HOME/.local/bin:$PATH"
 fi

 if test -d "$HOME/bin"; then
     PATH="$HOME/bin:$PATH"
 fi

