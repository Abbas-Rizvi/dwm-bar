#!/bin/sh

# A dwm_bar function that shows the current date and time
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Date is formatted like like this: "[Mon 01-01-00 00:00:00]"
dwm_date () {
    printf "%s" "$SEP1"
    days=('Sunday' 'Mondy' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday')

    if [ "$IDENTIFIER" = "unicode" ]; then
        # printf "%s - " "${days[$(date "+%u")]}"
        printf "%s - " "$(date "+%A")"
        printf "%s" "$(date "+%m/%d/%y %r")"
    else
        printf "DAT %s" "$(date "+%m'/'%d'/'%y' '%X")"
    fi
    printf "%s\n" "$SEP2"
}

dwm_date
