cname="ubt2004"

if [ "$1" = "run" ]
then
	docker run --privileged -idt --name="$cname" --network=xyl_network --ip=172.18.0.100 ubuntu:my /usr/sbin/init
elif [ "$1" = "stop" ]
then
	docker stop "$cname"
elif [ "$1" == "rm" ]
then
	docker ps | grep "$cname"
	if [ $? -eq 0 ]
	then
		docker stop "$cname"
	fi

	docker rm "$cname"
elif [ "$1" == "net" ]
then
	docker network create xyl_network --subnet=172.18.0.0/16
else
	echo "unknow command!"
fi
