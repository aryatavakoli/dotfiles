sudo softwareupdate -i -a
xcode-select --install
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file=../brew/Brewfile
brew bundle --file=../brew/Caskfile
cd ~/Library/Fonts && { 
    curl -O -L 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'
    curl -O -L 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf'
    curl -O -L 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf'
    curl -O -L 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf'
    cd -; 
}
for EXT in $(cat ../vscode/Codefile); do code --install-extension $EXT; done
cp ../vscode/settings.json ~/Library/Application\ Support/Code/User/
