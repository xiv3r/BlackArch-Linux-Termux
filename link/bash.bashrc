#!/bash/bashrc

# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize
user=blackarch
PS1='\[\033[01;31m\][\u@$user\]]\033[00m\] \W\$ '

case ${TERM} in
  Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|tmux*|xterm*)
    PROMPT_COMMAND+=('printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')

    ;;
  screen*)
    PROMPT_COMMAND+=('printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
    ;;
esac

if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi
#
clear
#
echo -e "\e[1;32m"                                                                      
echo " ______  _       _______ _______ _       _______ _______ _______         ";
echo "(  ___ \( \     (  ___  |  ____ \ \    /(  ___  |  ____ |  ____ \\     /|";
echo "| (   ) ) (     | (   ) | (    \/  \  / / (   ) | (    )| (    \/ )   ( |";
echo "| (__/ /| |     | (___) | |     |  (_/ /| (___) | (____)| |     | (___) |";
echo "|  __ ( | |     |  ___  | |     |   _ ( |  ___  |     __) |     |  ___  |";
echo "| (  \ \| |     | (   ) | |     |  ( \ \| (   ) | (\ (  | |     | (   ) |";
echo "| )___) ) (____/\ )   ( | (____/\  /  \ \ )   ( | ) \ \_| (____/\ )   ( |";       
echo "|/ \___/(_______//     \(_______/_/    \//     \|/   \__(_______//     \|";
echo "                                                                         ";
echo "________________ _______ _______                                         ";
echo "\__   __(  ____ (  ____ |       )\     /|\     /|                        ";
echo "   ) (  | (    \/ (    )| () () | )   ( ( \   / )                        ";
echo "   | |  | (__   | (____)| || || | |   | |\ (_) /                         ";
echo "   | |  |  __)  |     __) |(_)| | |   | | ) _ (                          ";
echo "   | |  | (     | (\ (  | |   | | |   | |/ ( ) \                         ";
echo "   | |  | (____/\ ) \ \_| )   ( | (___) ( /   \ )                        ";
echo "   )_(  (_______//   \__//     \(_______)/     \|                        ";
echo
echo -e "\e[0m"
###
