ZSH_BASE=$HOME/dotfiles

source $ZSH_BASE/antigen/antigen.zsh

for file in ~/.{path,exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

antigen use oh-my-zsh

# Plugins
antigen bundles <<EOBUNDLES
command-not-found
colored-man-pages
magic-enter
extract
git
aliases
common-aliases
python
docker docker-compose
zsh-users/zsh-completions
zsh-users/zsh-autosuggestions
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-history-substring-search
HeroCC/LS_COLORS
unixorn/autoupdate-antigen.zshplugin
rupa/z
EOBUNDLES

case `uname` in
  Darwin)
    # Commands for OS X go here
    antigen bundle osx
    antigen bundle brew
    antigen bundle aws
    antigen bundle kubectl 
    antigen bundle terraform
    antigen bundle helm
  ;;
  Linux)
    # Commands for Linux go here
  ;;
esac

antigen theme romkatv/powerlevel10k
source ~/.p10k.zsh

antigen apply
