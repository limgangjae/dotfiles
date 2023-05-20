#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# startx on login

if [[ -z ${DISPLAY} ]]; then
	startx
fi
