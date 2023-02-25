# Install for MacOS
OS_TYPE=$(uname -s)

if [ $OS_TYPE == "Darwin" ]; then
    xcode-select --install
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

pip3 install dotbot
dotbot -c install.conf.yaml
