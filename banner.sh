#!/bin/bash

clear

# Colors
green="\e[1;32m"
cyan="\e[1;36m"
red="\e[1;31m"
reset="\e[0m"

# Logo display
echo -e "$green"
cat ~/MyTermuxPro/logo.txt
echo -e "$reset"

# Animation Loader
for i in 20 40 60 80 100
do
    clear
    echo -e "$cyan Loading... $i% $reset"

    case $i in
        20) bar="████░░░░░░" ;;
        40) bar="████████░░░░" ;;
        60) bar="████████████░░" ;;
        80) bar="████████████████░░" ;;
        100) bar="████████████████████" ;;
    esac

    echo -e "$red[$bar]$reset"
    sleep 0.7
done

clear

# Final Banner
figlet "ABHEE" | lolcat
echo -e "$cyan Welcome to MyTermuxPro 🚀 $reset"

# Date & system info
echo -e "$green Today: $(date) $reset"
