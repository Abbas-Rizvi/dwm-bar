#!/bin/bash
#

dwm_nm () {
    CONNAME=$(nmcli -a | grep "connected to " | grep -oE '[^ ]+$')

    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "%s" "${SEP1}"
        printf "%s" "🌐 "
    else
        printf "%s " "${SEP1}"
        printf "NET "
    fi

#    printf "%s" "${CONNAME}"
    [ ! "$CONNAME" ] && printf "OFFLINE"  || printf "%s" "${CONNAME}"
        printf "%s" "${SEP2}"
}

dwm_nm

