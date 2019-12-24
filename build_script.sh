sudo mkdir /tmp/tempdir
cd /tmp/tempdir
sudo cp /var/lib/jenkins/workspace/githubjob/ /tmp/tempdir
sudo apt update -y
sudo apt install docker.io -y
sudo service docker start
sudo docker build . -t  httpdimage -y 
sudo docker run -it -v /tmp/tempdir/:/usr/local/apache2/htdocs httpdimage
