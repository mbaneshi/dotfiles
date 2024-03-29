if status is-interactive
    # Commands to run in interactive sessions can go here
end


#Abreviatio
abbr ch "chezmoi"
abbr vi 'nvim'
abbr vim 'nvim'
abbr brewup 'brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
abbr z 'clear'
#
set -gx LDFLAGS "-L/usr/local/opt/llvm/lib"
  set -gx CPPFLAGS "-I/usr/local/opt/llvm/include"

  mcfly init fish | source


# config file
# vim ~/.config/fish/config.fish

# reload the config
# source ~/.config/fish/config.fish

# set the workspace path
set -x GOPATH /users/Mehdi/go

# add the go bin path to be able to execute our programs
set -x PATH  /usr/local/go/bin 
#starship init fish | source

#zoxide init fish | source

# Solarized Light & Magenta highlight
set -g man_blink -o red
set -g man_bold -o magenta
set -g man_standout -b white 586e75
set -g man_underline -u 586e75
