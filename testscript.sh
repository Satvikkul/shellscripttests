
#echo "Hello, world!"

echo "now installing nginx......\n"

read -p "Enter Your available Port(eg. 8080:80) for NGINX: "  port

docker container run --publish $port -d nginx

echo "nginx installed..!\n"

echo "\n\n"
echo "Listing all containers..\n"

docker container ls

VAR1="$(docker ps -q)"

echo "Removing recently installed container...\n"
docker container stop "${VAR1}"

docker container rm "${VAR1}"

docker container ls

echo "Container removed..."
