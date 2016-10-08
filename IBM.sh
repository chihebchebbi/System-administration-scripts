#!/bin/bash

#verification que domino est demarré 
if ("ps -ef |grep "/data/lotus/notes/85020/linux/server"")then{
	echo "Process was found";
	#verification des segments memoires 
	if ("ipcs -a | grep 0xf8")then{
    echo "memory sector was found";
	locate notes.ini 
	su -notes
	cd /data/notesdata
	/data/lotus/notes/85020/linux/server -q
	sleep 3000
# verification des segments memoires
		if [ "ipcs -a | grep 0xf8" ] then{
	/data/lotus/notes/85020/linux/nsd.sh -kill
	sleep 3000
	if [ "ipcs -a | grep 0xf8" ]then{
	echo "memory sector was found";
	/data/lotus/notes/85020/linux/nsd.sh -kill;
	}else {
	echo "memory sector not found";
	#Demarrage de domino
	screen -S CommunityMUX-d -m su - notes -c "cd /data/notesdata/;./ststart";
	quit;
}
}fi
}fi
fi
}
