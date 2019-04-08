<<<<<<< e447bca181316a34b9fdb7323a2da7a0d09d5b9d
. ./testing_env
cp docker-compose.yml.template docker-compose.yml
sed -i 's|\$DB_HOST|'"$OS_DB_HOST"'|' docker-compose.yml
sed -i 's|\$LOCAL_IP|'"$OS_LOCAL_IP"'|' docker-compose.yml
sed -i 's|\$RADIUS_IP|'"$OS_RADIUS_IP"'|' docker-compose.yml
sed -i 's|\$TEST_NET|'"$OS_TEST_NET"'|' docker-compose.yml
sed -i 's|\$AST_IP|'"$OS_AST_IP"'|' docker-compose.yml
sed -i 's|\$RC_IP|'"$RC_IP"'|' docker-compose.yml
docker-compose up $@
=======
ansible-playbook cpaas.yml

echo docker-compose up $@
>>>>>>> Adding ansible to automate build envs


