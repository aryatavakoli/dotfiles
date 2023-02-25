ZSH_BASE=$HOME/dotfiles

source $ZSH_BASE/antigen/antigen.zsh

antigen use oh-my-zsh

export EDITOR=nano
export VISUAL="$EDITOR"

# Plugins
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

case `uname` in
  Darwin)
    # Commands for OS X go here
    antigen bundle osx
    code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
  ;;
  Linux)
    # Commands for Linux go here
  ;;
esac

antigen theme romkatv/powerlevel10k

antigen apply