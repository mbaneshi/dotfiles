if status is-interactive
    # Commands to run in interactive sessions can go here
end


#Abreviatio
abbr z 'clear'
abbr e 'nvim'
abbr ch "chezmoi"
abbr vi 'nvim'
abbr vim 'nvim'

#
set -gx LDFLAGS "-L/usr/local/opt/llvm/lib"
  set -gx CPPFLAGS "-I/usr/local/opt/llvm/include"

  mcfly init fish | source

set -x GOROOT  /usr/local/go
set -x PATH $PATH $GOROOT/bin

set -x GOPATH $HOME/golibs
set -x PATH $PATH $GOPATH/bin
