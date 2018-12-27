#!/usr/bin/env bash

echo "  _____ ____                 _   _           _   _             ";
echo " |_   _|  _ \  __ _ _   _   | | | | ___  ___| |_(_)_ __   __ _ ";
echo "   | | | | | |/ _\` | | | |  | |_| |/ _ \/ __| __| | '_ \ / _\` |";
echo "   | | | |_| | (_| | |_| |  |  _  | (_) \__ \ |_| | | | | (_| |";
echo "   |_| |____/ \__,_|\__, |  |_| |_|\___/|___/\__|_|_| |_|\__, |";
echo "                    |___/                                |___/ ";


function depsinstalled {
	eval "sudo docker-compose up -d"	    
	}

if [ "$1" = "start" ]; then
	if [ -x "$(command -v docker)" ]; then
		
			if [ -x "$(command -v docker-compose)" ]; then
				depsinstalled
			else
				echo "Docker-Compose is not installed - please install docker-compose"
				# command
			fi
	
	
	else
		echo "Docker is not installed - please install install docker"
		# command
	fi
fi


if [ "$1" = "stop" ];
then
	eval "sudo docker-compose down"
fi
