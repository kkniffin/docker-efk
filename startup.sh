default_interface=$(ip ro sh | awk '/^default/{ print $5; exit }')
export DOCKER_HOST_IP=$(ip ad sh $default_interface | awk '/inet /{print $2}' | cut -d/ -f1)
[ -z "$DOCKER_HOST_IP" ] && (echo "No docker host ip address">&2; exit 1 )
echo $DOCKER_HOST_IP
docker-compose $1 $2 $3 $3 $4 $5 $6
