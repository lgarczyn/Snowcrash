# install wireshark
brew install wireshark
# get file from vm
scp -P4242 level02@VM_IP:/home/user/level02/level02.pcap level02.pcap
# analyze file (displaying TCP data as text)
tshark -o data.show_as_text:TRUE -T fields -e ip.src -e ip.dst -e data.text -r level02.pcap
# output gives us "ft_wandrNDRelL0L", one letter every odd line
# escalate power level
su level02
ft_wandrNDRelL0L
# get next flag
getflag # > kooda2puivaav1idi4f57q8iq