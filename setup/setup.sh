export OS_TYPE=$(uname -s) 

echo $OS_TYPE

if [ $OS_TYPE == "Linux" ]; then 
    chmod u+x linux.sh 
    ./linux.sh
fi
if [ $OS_TYPE == "Darwin" ]; then 
    chmod u+x mac.sh 
    ./mac.sh
fi

chsh -s /usr/bin/zsh