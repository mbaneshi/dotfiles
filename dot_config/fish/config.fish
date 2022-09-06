if status is-interactive
    # Commands to run in interactive sessions can go here
end


#Abreviatio
abbr z 'clear'
abbr e 'nvim'
abbr ch "chezmoi"
abbr vi 'nvim'
abbr vim 'nvim'
abbr brewup 'brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
#
set -gx LDFLAGS "-L/usr/local/opt/llvm/lib"
  set -gx CPPFLAGS "-I/usr/local/opt/llvm/include"

  mcfly init fish | source

set -x GOROOT  /usr/local/go
set -x PATH $PATH $GOROOT/bin

set -x GOPATH $HOME/golibs
set -x PATH $PATH $GOPATH/bin


fish_vi_key_bindings

function fish_greetinga
    # echo Hello friend!
    # echo The time is (set_color yellow; date +%T; set_color normal) and this machine is called $hostname
  echo ⠀(set_color yellow)⠀⠀⣤⣤⠀⠀(set_color normal)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀
  echo ⠀(set_color yellow)⠀⠀⣿⣿⠀(set_color red)⠀⠀⣀⣀⡀⠀⣀⣀⠀(set_color normal)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  echo ⠀(set_color yellow)⠀⠀⢸⣿⠀(set_color red)⠀⣾⣿⣿⣿⣾⣿⣿⣷⠀⠀(set_color normal)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⡿⠏⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠁⠀⠀⠀⣰⣶⡀⠀⠀⠀⠀
  echo ⠀(set_color yellow)⠀⠀⢸⣿⠀(set_color red)⠀⠻⣿⣿⣿⣿⣿⣿⡿⠀⠀(set_color normal)⠀⢰⣶⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣶⣿⣿⣿⠟⠋⠀⠀⠀⠀⠀⣠⣶⣿⣿⠀⠸⣿⣿⣷⣶⣶⣿⣿⡿⠀⠀⠀⠀⠀
  echo ⠀(set_color yellow)⠀⠀⣠⣤⠀⠀(set_color red)⠀⠙⢿⣿⣿⡿⠋⠀⠀⠀⠀(set_color normal)⠀⠻⢿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠟⠉⠀⠀⠙⠻⠿⠿⠿⠟⣋⣀⣤⣄⡀⠀⠀
  echo ⠀(set_color yellow)⠀⠀⠈⠉⠀⠀(set_color red)⠀⠀⠀⢻⡟⠁⠀⠀⠀⠀⠀(set_color normal)⠀⠀⠀⠈⠉⠛⠛⠻⠿⠿⠿⠛⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⠿⠿⠃⠀⠀
  echo ⠀⠀⠀⠀⠀⠀⠀⠀(set_color red)⠀⠀⠀⠀⠀⠀⠀⠀(set_color normal)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⠉⠀⠀⠀⠀⠀⠀
  echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
end

function la --wraps=ls --wraps=exa --description 'List contents of directory using exa tree'
  exa --grid --icons -a --long --header --accessed $argv
end

function ll --wraps=ls --wraps=exa --description 'List contents of directory using exa grid'
  exa --tree --level=1 --long --header --accessed $argv
end

function lla --wraps=ls --wraps=exa --description 'List contents of directory using exa grid'
  exa --tree --level=1 -a --long --header --accessed $argv
end

function lll --wraps=ls --wraps=exa --description 'List contents of directory using exa grid'
  exa --tree --level=2 -a --long --header --accessed $argv
end

function llll --wraps=ls --wraps=exa --description 'List contents of directory using exa grid'
  exa --tree --level=3 -a --long --header --accessed $argv
end

starship init fish | source

zoxide init fish | source


