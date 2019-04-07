#!/usr/bin/fish
# Simple setup to forward all tcp frames to dest
#
set DIP 127.0.0.1
set DPORT 8010

iptables -A PREROUTING -t nat -i ens3 -p tcp --dport 80 -j DNAT --to $DIP:$DPORT
iptables -A FORWARD -p tcp -d $DIP --dport $DPORT -j ACCEPT
