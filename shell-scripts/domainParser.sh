grep -wioP "([a-zA-Z][a-zA-Z0-9\+-_.]+)@([a-zA-Z0-9\+-_.]+)(.[a-zA-Z])" mbox-short.txt | sort | uniq | grep -oP "@([a-zA-Z]+)" | sed "s/@//" | uniq > mbox-domainlist.txt

