
echo "Checking Internet Connection..."
sleep 1
echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Internt is Connected"
else
    echo "No Internet connection"
fi

sleep1

echo "Checking if Docker Daemon is running..."
{
  ## will throw an error if the docker daemon is not running and jump
  ## to the next code chunk     
  docker ps -q &> /dev/null
} || {
  echo "Docker is not running. Please start docker on your computer"
  echo "When docker has finished starting up press [ENTER} to continue"
  read
}

echo "Docker Daemon is now running."
sleep 1
echo "Installing tomcat......\n"

read -p "Enter Your available Port(eg. 8080:8080) for tomcat: "  port
docker run -it --rm -p $port -d tomcat:8.0

echo "Tomcat installed..!\n"

