#!/bin/bash
# infinity-looper-2.sh
# Infinite looping script
# J.E.HUTTING 21-JAN-2017

#set -x # expand the commands

# set here the files to play ---------------------------------------------------
FILES=`ls /home/pi/music/*.mp3`
# ------------------------------------------------------------------------------
#echo $FILES

# who's playing it
OMXPLAYER="/usr/bin/omxplayer"
PARAMETERS="--vol -1502"

echo "*****INFINITE LOOPING SCRIPT!!!"
echo "*****ABORT WITH CTRL+C"
while true; do
    while true; do
        IFS=$'\n'   # IFS: Internal field separator
        for entry in $FILES
        do
            IFS=$' \t\n'

            # let's play
            echo $entry
            $OMXPLAYER $PARAMETERS "$entry" > /dev/null
        done
    done
done
