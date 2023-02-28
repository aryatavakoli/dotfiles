case "$(uname -sr)" in
   Darwin*)
    echo 'Mac OS X Detected'
    chmod u+x mac.sh 
    ./mac.sh
    ;;

   Linux*microsoft*)
    echo 'WSL Detected'  # Windows Subsystem for Linux
    chmod u+x wsl.sh 
    ./wsl.sh
    ;;

   Linux*)
    echo 'Linux System Detected' 
    chmod u+x linux.sh 
    ./linux.sh
    ;;
esac