if status is-interactive
    # Commands to run in interactive sessions can go here
end


#Abrevuatio
abbr z 'clear'
abbr e 'nvim'
abbr ch "chezmoi"
abbr vi 'nvim'
abbr vim 'nvim'

#
set -gx LDFLAGS "-L/usr/local/opt/llvm/lib"
  set -gx CPPFLAGS "-I/usr/local/opt/llvm/include"
