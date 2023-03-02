ZSH_BASE=$HOME/dotfiles

source $ZSH_BASE/antigen/antigen.zsh

for file in ~/.{path,exports,aliases,functions,antigenrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;