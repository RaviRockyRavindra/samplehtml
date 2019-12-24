sudo apt update -y
sudo apt install docker.io -y
sudo service docker start
sudo docker build . -t  httpdimage 
sudo docker run -d -v /tmp/tempdirr/githubjob:/usr/local/apache2/htdocs -p81:80 httpdimage

#sudo docker run doesnot contains run -it because we are executing in detached mode so dont forgot to attach -d

# dont forgot address port to the conatiner while executing docker run command

