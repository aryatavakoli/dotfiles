ZSH_BASE=$HOME/dotfiles

source $ZSH_BASE/antigen/antigen.zsh

for file in ~/.{path,exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

antigen use oh-my-zsh

# Plugins
antigen bundle git
antigen bundle git aliases
antigen bundle common-aliases
antigen bundle docker
antigen bundle python
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

case `uname` in
  Darwin)
    # Commands for OS X go here
    antigen bundle osx
    antigen bundle brew
    code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
  ;;
  Linux)
    # Commands for Linux go here
  ;;
esac

antigen theme romkatv/powerlevel10k

antigen apply