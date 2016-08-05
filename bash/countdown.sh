secs=$((10 * 60))
while [ $secs -gt 0 ]; do
   echo -ne " $secs\033[0K\r"
   sleep 1
   : $((secs--))
done

say -v Cellos "hey chris, the cache should be cleared now. nice job buddy."
