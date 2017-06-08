Docker NFSEN
============

NFSEN is a frontent to NFDUMP. It is used to collect and process NetFlow data from network devices.

How to run
----------

You can use ./run.sh or write your own startup:

	docker run -d -h netflow --name netflow -e NFSEN_SOURCES="RouterOS,9996,#00ff00" -p 8080:80 -p 9996:9996/udp -v /data:/data docker-nfsen "$@"

It will create nftrack PortTracker DB take 5-20 min

NFSEN_SOURCES defines NetFlow sources.
Each source has 3 fields: name, port, color. Multiple sources are separated by collon.
Do not forget to bind extra UDP ports and a data folder where nfdump and nfsen store their data.
