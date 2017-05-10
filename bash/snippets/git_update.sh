#!/bin/bash

LOG_DIR="${HOME}/logs"
LOG_FILE="my_awesome.log"
GIT_DIRS="${HOME}/Sites/*/"

DATE=`date +%Y-%m-%d:%H:%M:%S`

# Check for log directory & file
[ -d $LOG_DIR ] || mkdir $LOG_DIR
touch ${LOG_DIR}/${LOG_FILE} || exit

# Start new log entry
echo "------------------------
Starting Update at: ${DATE}" >> ${LOG_DIR}/${LOG_FILE}

for DIR in ${HOME}/Sites/*/ ; do
   {
        cd DIR
        
        # Checkout & Pull Staging
        CHECKOUT_STAGING=$(git checkout staging)
        if [[ $CHECKOUT_STAGING == *"Your branch is up-to-date"* ]]; then
            PULL_STAGING=$(git pull)
        fi
        
        # Checkout & Pull Master
        CHECKOUT_MASTER=$(git checkout master)
        if [[ $CHECKOUT_MASTER != *"Your branch is up-to-date"*  ]]; then
            PULL_MASTER=$(git pull)
        fi
    
    } &> /dev/null

    # Let them know stuff is happening, then log results
    echo -n "."
    echo "Updated: ${DIR}
-- master: ${CHECKOUT_MASTER}
-- staging: ${CHECKOUT_STAGING}" >> ${LOG_DIR}/${LOG_FILE}
done

END_DATE=`date +%Y-%m-%d:%H:%M:%S`
echo ""
echo "Completed at: ${END_DATE}, results logged to ${LOG_DIR}/${LOG_FILE}"

