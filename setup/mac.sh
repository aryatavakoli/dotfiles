sudo softwareupdate -i -a
xcode-select --install
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file=../brew/Brewfile
brew bundle --file=../brew/Caskfile
for EXT in $$(cat ../vscode/Codefile); do code --install-extension $$EXT; done
