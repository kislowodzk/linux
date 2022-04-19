# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias la='ls -A'
alias l='ls -CF'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi





# KOLORKI PRZY ADRESIE
# =====================================================================

bash_prompt_command() {
	# How many characters of the $PWD should be kept
	local pwdmaxlen=25

	# Indicate that there has been dir truncation
	local trunc_symbol=".."

	# Store local dir
	local dir=${PWD##*/}

	# Which length to use
	pwdmaxlen=$(( ( pwdmaxlen < ${#dir} ) ? ${#dir} : pwdmaxlen ))

	NEW_PWD=${PWD/#$HOME/\~}
	
	local pwdoffset=$(( ${#NEW_PWD} - pwdmaxlen ))

	# Generate name
	if [ ${pwdoffset} -gt "0" ]
	then
		NEW_PWD=${NEW_PWD:$pwdoffset:$pwdmaxlen}
		NEW_PWD=${trunc_symbol}/${NEW_PWD#*/}
	fi
}


##
##	GENERATE A FORMAT SEQUENCE
##
format_font()
{
	## FIRST ARGUMENT TO RETURN FORMAT STRING
	local output=$1


	case $# in
	2)
		eval $output="'\[\033[0;${2}m\]'"
		;;
	3)
		eval $output="'\[\033[0;${2};${3}m\]'"
		;;
	4)
		eval $output="'\[\033[0;${2};${3};${4}m\]'"
		;;
	*)
		eval $output="'\[\033[0m\]'"
		;;
	esac
}



##
## COLORIZE BASH PROMT
##
bash_prompt() {

	############################################################################
	## COLOR CODES                                                            ##
	## These can be used in the configuration below                           ##
	############################################################################
	
	## FONT EFFECT
	local      NONE='0'
	local      BOLD='1'
	local       DIM='2'
	local UNDERLINE='4'
	local     BLINK='5'
	local    INVERT='7'
	local    HIDDEN='8'
	
	
	## COLORS
	local   DEFAULT='9'
	local     BLACK='0'
	local       RED='1'
	local     GREEN='2'
	local    YELLOW='3'
	local      BLUE='4'
	local   MAGENTA='5'
	local      CYAN='6'
	local    L_GRAY='7'
	local    D_GRAY='60'
	local     L_RED='61'
	local   L_GREEN='62'
	local  L_YELLOW='63'
	local    L_BLUE='64'
	local L_MAGENTA='65'
	local    L_CYAN='66'
	local     WHITE='67'
	
	
	## TYPE
	local     RESET='0'
	local    EFFECT='0'
	local     COLOR='30'
	local        BG='40'
	
	
	## 256 COLOR CODES
	local NO_FORMAT="\[\033[0m\]"
	local ORANGE_BOLD="\[\033[1;38;5;208m\]"
	local TOXIC_GREEN_BOLD="\[\033[1;38;5;118m\]"
	local RED_BOLD="\[\033[1;38;5;1m\]"
	local CYAN_BOLD="\[\033[1;38;5;87m\]"
	local BLACK_BOLD="\[\033[1;38;5;0m\]"
	local WHITE_BOLD="\[\033[1;38;5;15m\]"
	local GRAY_BOLD="\[\033[1;90m\]"
	local BLUE_BOLD="\[\033[1;38;5;74m\]"
	
	
	
	
	
	##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  
	  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##
	##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ## 

	
	
	##                          CONFIGURE HERE                                ##

	
	
	############################################################################
	## CONFIGURATION                                                          ##
	## Choose your color combination here                                     ##
	############################################################################
	
	############################################################################
	## EXAMPLE CONFIGURATIONS                                                 ##
	## I use them for different hosts. Test them out ;)                       ##
	############################################################################



    ## TO MOJE
	## CONFIGURATION: CYAN-BLUE
    if [ "$HOSTNAME" = kislowodzk ]; then
        FONT_COLOR_1=$WHITE; BACKGROUND_1=$GREEN; TEXTEFFECT_1=$BOLD
        FONT_COLOR_2=$BLACK; BACKGROUND_2=$BLUE; TEXTEFFECT_2=$BOLD
        FONT_COLOR_3=$WHITE; BACKGROUND_3=$BLUE; TEXTEFFECT_3=$BOLD
        PROMT_FORMAT=$NO_FORMAT
	fi


	
	## CONFIGURATION: BLUE-WHITE
	if [ "$HOSTNAME" = nazwa_hosta ]; then
		FONT_COLOR_1=$WHITE; BACKGROUND_1=$BLUE; TEXTEFFECT_1=$BOLD
		FONT_COLOR_2=$WHITE; BACKGROUND_2=$L_BLUE; TEXTEFFECT_2=$BOLD	
		FONT_COLOR_3=$D_GRAY; BACKGROUND_3=$WHITE; TEXTEFFECT_3=$BOLD	
		PROMT_FORMAT=$CYAN_BOLD
	fi
	
	## CONFIGURATION: BLACK-RED
	if [ "$HOSTNAME" = nazwa_hosta ]; then
		FONT_COLOR_1=$WHITE; BACKGROUND_1=$BLACK; TEXTEFFECT_1=$BOLD
		FONT_COLOR_2=$WHITE; BACKGROUND_2=$D_GRAY; TEXTEFFECT_2=$BOLD
		FONT_COLOR_3=$WHITE; BACKGROUND_3=$RED; TEXTEFFECT_3=$BOLD
		PROMT_FORMAT=$RED_BOLD
	fi
	
	
	## CONFIGURATION: GRAY-SCALE
	if [ "$HOSTNAME" = nazwa_hosta ]; then
		FONT_COLOR_1=$WHITE; BACKGROUND_1=$BLACK; TEXTEFFECT_1=$BOLD
		FONT_COLOR_2=$WHITE; BACKGROUND_2=$D_GRAY; TEXTEFFECT_2=$BOLD
		FONT_COLOR_3=$WHITE; BACKGROUND_3=$L_GRAY; TEXTEFFECT_3=$BOLD
		PROMT_FORMAT=$BLACK_BOLD
	fi
	
	## CONFIGURATION: GRAY-CYAN
	if [ "$HOSTNAME" = nazwa_hosta ]; then
		FONT_COLOR_1=$WHITE; BACKGROUND_1=$BLACK; TEXTEFFECT_1=$BOLD
		FONT_COLOR_2=$WHITE; BACKGROUND_2=$D_GRAY; TEXTEFFECT_2=$BOLD
		FONT_COLOR_3=$BLACK; BACKGROUND_3=$L_CYAN; TEXTEFFECT_3=$BOLD
		PROMT_FORMAT=$CYAN_BOLD
	fi
	
	
	##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  
	  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##
	##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##  ## 	

	
	
	
	############################################################################
	## TEXT FORMATING                                                         ##
	## Generate the text formating according to configuration                 ##
	############################################################################
	
	## CONVERT CODES: add offset
    FC1=$(($FONT_COLOR_1+$COLOR))
	BG1=$(($BACKGROUND_1+$BG))
	FE1=$(($TEXTEFFECT_1+$EFFECT))
	
	FC2=$(($FONT_COLOR_2+$COLOR))
    BG2=$(($BACKGROUND_2+$BG))
	FE2=$(($TEXTEFFECT_2+$EFFECT))
	
	FC3=$(($FONT_COLOR_3+$COLOR))
	BG3=$(($BACKGROUND_3+$BG))
	FE3=$(($TEXTEFFECT_3+$EFFECT))
	
    FC4=$(($FONT_COLOR_4+$COLOR))
	BG4=$(($BACKGROUND_4+$BG))
	FE4=$(($TEXTEFFECT_4+$EFFECT))
	

	## CALL FORMATING HELPER FUNCTION: effect + font color + BG color
	local TEXT_FORMAT_1
	local TEXT_FORMAT_2
	local TEXT_FORMAT_3
	local TEXT_FORMAT_4	
	format_font TEXT_FORMAT_1 $FE1 $FC1 $BG1
	format_font TEXT_FORMAT_2 $FE2 $FC2 $BG2
	format_font TEXT_FORMAT_3 $FC3 $FE3 $BG3
	format_font TEXT_FORMAT_4 $FC4 $FE4 $BG4
	
	
	# GENERATE PROMT SECTIONS
	local PROMT_USER=$"$TEXT_FORMAT_1 \u "
	local PROMT_HOST=$"$TEXT_FORMAT_2 \h "
	local PROMT_PWD=$"$TEXT_FORMAT_3 \${NEW_PWD} "
	local PROMT_INPUT=$"$PROMT_FORMAT "


	############################################################################
	## SEPARATOR FORMATING                                                    ##
	## Generate the separators between sections                               ##
	## Uses background colors of the sections                                 ##
	############################################################################
	
	## CONVERT CODES
	TSFC1=$(($BACKGROUND_1+$COLOR))
	TSBG1=$(($BACKGROUND_2+$BG))
	
	TSFC2=$(($BACKGROUND_2+$COLOR))
	TSBG2=$(($BACKGROUND_3+$BG))
	
	TSFC3=$(($BACKGROUND_3+$COLOR))
	TSBG3=$(($DEFAULT+$BG))
	

	## CALL FORMATING HELPER FUNCTION: effect + font color + BG color
	local SEPARATOR_FORMAT_1
	local SEPARATOR_FORMAT_2
	local SEPARATOR_FORMAT_3
	format_font SEPARATOR_FORMAT_1 $TSFC1 $TSBG1
	format_font SEPARATOR_FORMAT_2 $TSFC2 $TSBG2
	format_font SEPARATOR_FORMAT_3 $TSFC3 $TSBG3
	

	# GENERATE SEPARATORS WITH FANCY TRIANGLE
	local TRIANGLE=$'\uE0B0'
	local SEPARATOR_1=$SEPARATOR_FORMAT_1$TRIANGLE
	local SEPARATOR_2=$SEPARATOR_FORMAT_2$TRIANGLE
	local SEPARATOR_3=$SEPARATOR_FORMAT_3$TRIANGLE



	############################################################################
	## WINDOW TITLE                                                           ##
	## Prevent messed up terminal-window titles                               ##
	############################################################################
	case $TERM in
	xterm*|rxvt*)
		local TITLEBAR='\[\033]0;\u:${NEW_PWD}\007\]'
		;;
	*)
		local TITLEBAR=""
		;;
	esac



	############################################################################
	## BASH PROMT                                                             ##
	## Generate promt and remove format from the rest                         ##
	############################################################################
    PS1="$TITLEBAR\n${PROMT_USER}${SEPARATOR_1}${PROMT_PWD}${SEPARATOR_3}${PROMT_INPUT}"

	

	## For terminal line coloring, leaving the rest standard
	none="$(tput sgr0)"
	trap 'echo -ne "${none}"' DEBUG
}




################################################################################
##  MAIN                                                                      ##
################################################################################

##	Bash provides an environment variable called PROMPT_COMMAND. 
##	The contents of this variable are executed as a regular Bash command 
##	just before Bash displays a prompt. 
##	We want it to call our own command to truncate PWD and store it in NEW_PWD
PROMPT_COMMAND=bash_prompt_command

##	Call bash_promnt only once, then unset it (not needed any more)
##	It will set $PS1 with colors and relative to $NEW_PWD, 
##	which gets updated by $PROMT_COMMAND on behalf of the terminal
bash_prompt
unset bash_prompt


# ==================================================================


# ====================================================================

tput setaf 2
echo "
█░█░█ █ ▀█▀ ▄▀█ ░░█   █░█░█   █▄▀ █ █▀ █░░ █▀█ █░█░█ █▀█ █▀▄ ▀█ █▄▀ █░█
▀▄▀▄▀ █ ░█░ █▀█ █▄█   ▀▄▀▄▀   █░█ █ ▄█ █▄▄ █▄█ ▀▄▀▄▀ █▄█ █▄▀ █▄ █░█ █▄█
"
#| lolcat -p 1 -t

tput setaf 4
cat "/home/md/.startup_zsh/$(ls ~/.startup_zsh/|shuf -n 1)"
#| lolcat -p 1 -t 

tput sgr0

# cat ~/.kot | lolcat -p 1 -t

# fortune | cowsay -f $(ls /usr/share/cowsay/cows/|shuf -n 1) # | lolcat -p 1 -t

# autostart
xinput set-prop "$(xinput list --name-only | grep -i touch)" "libinput Tapping Enabled" 1
# dzięki temu touchpad działa tak, jak tego oczekuję
setxkbmap -option caps:swapescape
# jeśli odpalę 'setxkbmap -option', to wróci do normy
set s off
xset -dpms
xset s noblank
xset r rate 350 43
export VISUAL=vim
export EDITOR=vim

# tu powinna być komenda dla fzf, ale jest niżej

# moje aliasy
alias lla='ls -alFh'
alias ll='ls -lFh'
alias :wq=exit
alias :q=exit
alias wq=exit
alias ZZ=exit
alias ZQ=exit
alias cls=clear
alias v=vim
alias nv=nvim
alias vtd='vim ~/Notatki/ToDo.md'
alias nvtd='nvim ~/Notatki/ToDo.md'
alias s='ranger ~/1-STUDIA/2_Rok/Semestr_4/'
alias rt='gio trash'
alias caps='setxkbmap -option caps:swapescape'
alias nocaps='setxkbmap -option'
alias fresh='sudo apt update; sudo apt upgrade; sudo apt autoremove'
alias pop_fresh='flatpak update; sudo apt dist-upgrade'
alias bed='shutdown now'
alias bl=blueman-manager
alias wi=nmtui
alias mi=pavucontrol
alias mi_term=alsamixer
alias open=xdg-open
alias kal='ncal -A1 -B1'
alias clock='tty-clock -c'
alias clock_s='tty-clock -s -c'
alias ra=ranger
alias pa='pandoc -V geometry:margin=1in'    # pandoc z dobrymi marginesami, po tym powinienem podać plik wejścia -o i plik wyjścia
alias kompresja='echo gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sProcessColorModel=DeviceGray -sColorConversionStrategy=Gray -dOverrideICC -sOutputFile=output.pdf input.pdf'

# FZF
alias vimf='vim $(fzf --exact --layout=reverse --height 40%)'
alias nvimf='nvim $(fzf --exact --layout=reverse --height 40%)'
alias nvf='nvim $(fzf --exact --layout=reverse --height 40%)'
alias fzf='fzf --exact --layout=reverse --height 40%'
# wypisuje ścieżkę do folderu poprzedzającego znaleziony plik
alias cdf='cd $(fzf --exact --layout=reverse --height 40% | awk "BEGIN{FS=OFS=\"/\"}{\$NF=\"\"; NF--; print}")'
# żeby działał dla ukrytych plików
# export FZF_DEFAULT_COMMAND='find . -path './.git' -prune -o -print'

# skrypty
alias kopia='~/.kopiuj-na-gita.sh'
alias scroll='~/.mysz.sh'
# alias monitory_awesome='~/.arandr.sh'       # to muszę wygenerować za pomocą arandr, do tego skryptu w kolejnej linii warto
                                            # dopisać:
                                            # echo 'awesome.restart()' | awesome-client
                                            # żeby od razu zrestartował awesome

alias monitory_i3='~/.arandr_i3.sh'
alias drugimonitor_i3='~/.drugi_monitor_i3.sh'

alias br='xrandr --output LVDS-1 --brightness'

alias br1='xrandr --output LVDS-1 --brightness 0.1'
alias br2='xrandr --output LVDS-1 --brightness 0.2'
alias br3='xrandr --output LVDS-1 --brightness 0.3'
alias br4='xrandr --output LVDS-1 --brightness 0.4'
alias br5='xrandr --output LVDS-1 --brightness 0.5'
alias br6='xrandr --output LVDS-1 --brightness 0.6'
alias br7='xrandr --output LVDS-1 --brightness 0.7'
alias br8='xrandr --output LVDS-1 --brightness 0.8'
alias br9='xrandr --output LVDS-1 --brightness 0.9'
alias br0='xrandr --output LVDS-1 --brightness 1.0'

alias b1='xrandr --output LVDS-1 --brightness 0.1'
alias b2='xrandr --output LVDS-1 --brightness 0.2'
alias b3='xrandr --output LVDS-1 --brightness 0.3'
alias b4='xrandr --output LVDS-1 --brightness 0.4'
alias b5='xrandr --output LVDS-1 --brightness 0.5'
alias b6='xrandr --output LVDS-1 --brightness 0.6'
alias b7='xrandr --output LVDS-1 --brightness 0.7'
alias b8='xrandr --output LVDS-1 --brightness 0.8'
alias b9='xrandr --output LVDS-1 --brightness 0.9'
alias b0='xrandr --output LVDS-1 --brightness 1.0'
alias bb='xrandr --output LVDS-1 --brightness 1.0'

