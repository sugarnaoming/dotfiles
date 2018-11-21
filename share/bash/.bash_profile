#
# ~/.bash_profile
#
if [ -f ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi 

[[ -f ~/.bashrc ]] && . ~/.bashrc
exec fish
