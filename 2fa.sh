#!/bin/bash
 
set -x

mode="$1"
serviceName="$2" 
recipient="$3" 
secret="$4"

if [[ "$#" -lt 3 || $mode == "--help" ]]; then
    echo "Usage: $0 MODE SERVICE_NAME RECIPIENT [SECRET]"
    echo "Mode can either be \"add\" or \"code\"."
    exit 1
fi

# Add an encrypted secret
if [[ $mode == "add" ]]; then
    if [[ "$#" -ne 4 ]]; then
        echo "4 arguments required: $0 add SERVICE_NAME RECIPIENT SECRET"
        exit 1
    fi

    echo $secret | gpg2 -r $recipient --output $HOME/.2fa/$serviceName -e
    [ "$?" == 0 ] && echo "The encrypted 2fa secret was saved in $HOME/.2fa/$serviceName."
fi

# Decode an encrypted secret and generate the code