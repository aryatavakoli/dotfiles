case "$(uname -sr)" in
   Darwin*)
    echo 'Mac OS X'
    chmod u+x mac.sh 
    ./mac.sh
    ;;

   Linux*Microsoft*)
    echo 'WSL'  # Windows Subsystem for Linux
    ;;

   Linux*)
    echo 'Linux'
    chmod u+x linux.sh 
    ./linux.sh
    ;;
esac