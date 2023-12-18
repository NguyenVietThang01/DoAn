#!/bin/bash
PORT=3000

# Check if this machine has python3 or not
if command -v python3 &> /dev/null
then 
    echo "Python3 has been installed"
else
    if command -v yum &> /dev/null
    then
        echo "Installing python3 using yum"
        sudo yum install -y python3
    elif command -v apt &> /dev/null
    then
        echo "Installing python3 using apt"
        sudo apt update && sudo apt install -y python3
    fi
fi

# Hosting server 
if command -v python3 &> /dev/null
then
    python3 -m http.server $PORT
fi
