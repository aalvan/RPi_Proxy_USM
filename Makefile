install:
	sudo apt install -y python3
	sudo apt install -y python3-pip
	pip3 install pyserial
	sudo apt-get -y install gstreamer1.0-tools
	sudo apt-get -y install gstreamer1.0-plugins-good
	sudo apt-get -y install gstreamer1.0-plugins-bad
	sudo apt-get -y install gstreamer1.0-plugins-ugly
	sudo apt-get -y install gstreamer1.0-plugins-base
	sudo apt-get -y install ffmpeg
directory:
	sudo mv $(HOME)/Proxy_051 /opt/
test:
	nohup sh start-wp.sh > /dev/null 2>&1 &
automatization:
	printf '$-19i\nsleep 60\n.\nw\n' | ex -s /etc/rc.local
	printf '$-20i\ncd /opt/Proxy_051\n.\nw\n' | ex -s /etc/rc.local
	printf '$-21i\nsu $(shell users | cut -d ' ' -f1) -c "sh start-wp.sh &"\n.\nw\n' | ex -s /etc/rc.local
	
