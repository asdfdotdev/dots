############################################################################
# Unwatched cache purge notification (Mac Version)
#
# If you ever find yourself in a situation where you can't manually purge
# server cache and have to wait 10 minutes but don't want to watch the clock
# this might be useful.
#
# For extra fun start the script, turn up your volume, then leave the room.
############################################################################

secs=$((10 * 60))
while [ $secs -gt 0 ]; do
   echo -ne " $secs\033[0K\r"
   sleep 1
   : $((secs--))
done

say "Hey $USER, the cache should be cleared now. Good job on those updates buddy."