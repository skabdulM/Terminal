set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths

set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type
# set EDITOR "emacsclient -t -a ''"                 # $EDITOR use Emacs in terminal
# set VISUAL "emacsclient -c -a emacs"              # $VISUAL use Emacs in GUI mode

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'


# switch between shells
# I do not recommend switching default SHELL from bash.
alias tofish="chsh -s $(which fish)"
alias tozsh="chsh -s $(which zsh)"
alias tobash="chsh -s $(which bash)"
alias clr='clear && exec fish'
alias config='code ~/.config/fish/config.fish'
alias backend='service1 /home/skabdul/Projects/Ecommerce-app/ecommerce-backend'
alias frontend='service2 /home/skabdul/Projects/Ecommerce-app/ecommerce-frontend'
alias admin='service3 /home/skabdul/Projects/Ecommerce-app/ecommerce-admin'


colorscript random

# oh-my-posh init fish --config ~/.ohmyposhthemes/tokyonight_storm.omp.json | source
oh-my-posh init fish --config ~/.ohmyposhthemes/the-unnamed.omp.json | source
# oh-my-posh init fish --config ~/.ohmyposhthemes/easy-term.omp.json  | source
# oh-my-posh init fish --config ~/.ohmyposhthemes/jandedobbeleer.omp.json  | source
# oh-my-posh init fish --config ~/.ohmyposhthemes/jblab_2021.omp.json  | source
# oh-my-posh init fish --config ~/.ohmyposhthemes/negligible.omp.json  | source  #next
#oh-my-posh init fish | source

function fish_mode_prompt; end

function service1 
   cd $argv[(count $argv)]
   command code . && npm run start:dev
end
function service2 
   cd $argv[(count $argv)]
   command code . && ionic serve
end
function service3 
   cd $argv[(count $argv)]
   command code . && ionic serve --port=8101
end