sudo apt update -y
sudo apt install docker.io -y
sudo service docker start
sudo docker build . -t  httpdimage 
sudo docker run -d -v /tmp/tempdir/githubjob:/usr/local/apache2/htdocs -p81:80 httpdimage
