# we decide to hack getflag
# we use nm to find that it uses ptrace
# we use gdb and jump to skip calls to ptrace
# we use jump again to skip the uid check
gdb /bin/getflag # >
# skip ptrace
b       *0x0804898e
jump    *0x080489a8
# jump to flag14 uid path
b       *0x08048989
jump    *0x08048bbb
# > 7QiHafiNa3HVozsaXkawuYrTstxbpABHD8CPnHJ
