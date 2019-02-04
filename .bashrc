
    # _    _     ___    _    ____  
   # / \  | |   |_ _|  / \  / ___| 
  # / _ \ | |    | |  / _ \ \___ \ 
 # / ___ \| |___ | | / ___ \ ___) |
# /_/   \_\_____|___/_/   \_\____/ 
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias googledrive='cd ~/Google\ Drive\ \(kristiantuv\@gmail.com\)/'
alias books='cd ~/Google\ Drive\ \(kristiantuv\@gmail.com\)/Books'
alias note='vim /Users/Tuv/.vim/bundle/vim-notes/misc/notes/user/masternote'
alias notes='cd /Users/Tuv/.vim/bundle/vim-notes/misc/notes/user'
alias d='date'
alias full="printf '\e[9;1t'"
alias cpua="ps -A -o %cpu ";
alias NASA='telnet horizons.jpl.nasa.gov 6775';
alias fys4460="cd ~/Documents/UiO/V18/FYS4460";
alias inf5860="cd ~/Documents/UiO/V18/INF5860";
alias fys4130="cd ~/Documents/UiO/V18/FYS4130";
alias v18="cd ~/Documents/UiO/V18/";
alias bp="vim ~/.bashrc";
alias vrc="vim ~/.vimrc";
alias sbp="source ~/.bashrc;echo bashrc sourced" 
alias h='history'
alias j='jobs -l'
alias sap3='source activate pythonv3';
alias satf='source activate tflow';
alias sainf='source activate inf3331';
alias sd='source deactivate';
alias irc='vim ~/.inputrc';
alias testpy='vim ~/Documents/Testscripts/test.py';
alias runtest='python ~/Documents/Testscripts/test.py';
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias ls='ls --color --group-directories-first'  
alias c='clear'
# alias tmux="TERM=screen-256color-bce tmux"
alias tmux='tmux -2'
alias texvim='vim ~/.vim/bundle/vim-latex/ftplugin/tex.vim';
alias mltx='cd ~/Documents/master_thesis/latex';
alias runmain='pdflatex ~/Documents/master_thesis/latex/main.tex';
alias openmain='open ~/Documents/master_thesis/latex/main.pdf';

 # ____   _  _____ _   _ 
# |  _ \ / \|_   _| | | |
# | |_) / _ \ | | | |_| |
# |  __/ ___ \| | |  _  |
# |_| /_/   \_\_| |_| |_|
export PATH="/usr/local/bin:$PATH";
# export PATH="~/bin/:$PATH";
export PATH="~/Documents/Scripts/bashscripts:$PATH";
export PATH="/Applications/NEURON-7.5/nrn/x86_64/bin:$PATH" #added by NEURON installer
export PATH=$PATH:/Applications/Ovito.app/Contents/MacOS/
# added by Anaconda2 4.3.0 installer
export PATH="/Users/Tuv/anaconda/bin:$PATH"
export PATH="/opt/bin:$PATH"
export PATH="/opt/bin:$PATH"
export PATH="$HOME/bin:$PATH"
# Setting PATH for Python 3.7
# The original version is saved in .bashrc.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH=".:$PATH"

#  ______   _______ _   _  ___  _   _ ____   _  _____ _   _ 
# |  _ \ \ / /_   _| | | |/ _ \| \ | |  _ \ / \|_   _| | | |
# | |_) \ V /  | | | |_| | | | |  \| | |_) / _ \ | | | |_| |
# |  __/ | |   | | |  _  | |_| | |\  |  __/ ___ \| | |  _  |
# |_|    |_|   |_| |_| |_|\___/|_| \_|_| /_/   \_\_| |_| |_|
export PYTHONPATH="${PYTHONPATH}:/Users/Tuv/Documents/Modules/"



  # ____ ___  _     ___  ____  ____  
 # / ___/ _ \| |   / _ \|  _ \/ ___| 
# | |  | | | | |  | | | | |_) \___ \ 
# | |__| |_| | |__| |_| |  _ < ___) |
 # \____\___/|_____\___/|_| \_\____/ 
                                   
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[31;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
LS_COLORS='di=1;34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=1;36:*.rpm=90:*.tar=1;31:*.py=4'  
export LS_COLORS 




 # _____                 _   _                 
# |  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
# | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
# |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
# |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
                                             
# function rename {
# for i in $( command -p ls );
# do
#         mv $i ${i#INF3331-}
# done
# }

# function grade { 
#     str=($*)
#     filename=$(basename ${PWD}${1}.txt)
#     touch $filename
#     echo $(date) >> $filename
#     echo ${str[@]:1} >> $filename
# }

function cleanVIM()
{

  echo "Cleaning ~/.vimbackup/"
  rm -Rf ~/.vimbackup/*
  echo "Cleaning ~/.vimswap/"
  rm -Rf ~/.vimswap/*
  echo "Cleaning ~/.vimviews/"
  rm -Rf ~/.vimviews/*
  echo "Cleaning ~/.vimundo/"
  rm -Rf ~/.vimundo/*
  echo "All done!"

}
# source rename.sh
