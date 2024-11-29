sudo apt update
sudo apt full-upgrade -y
sudo apt install zsh fonts-powerline tree build-essential apt-transport-https wget gpg -y
sudo apt autoremove -y

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file=../brew/Brewfile