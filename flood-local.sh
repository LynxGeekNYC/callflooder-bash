#!/bin/bash
COUNTER=$1
for (( c=1; c<=COUNTER; c++))
do
 ./local
 cp callfile.bak callfile.call
 chmod 777 callfile.call
 chown asterisk:asterisk callfile.call
 mv callfile.call /var/spool/asterisk/outgoing/ 
sleep 2
 echo "Calling:"
 sed -n 1p callfile.bak 
 echo "Using:"
 sed -n 2p callfile.bak
 echo ""
done
