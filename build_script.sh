sudo apt update -y
sudo apt install docker.io -y
sudo service docker start
sudo docker build . -t  httpdimage 
sudo docker run -it -v /tmp/tempdir/:/usr/local/apache2/htdocs httpdimage
