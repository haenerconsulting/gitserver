VERSION=1.0
NAME=haenerconsulting/gitserver
TAG=${VERSION}
IMAGE_NAME=${NAME}:${TAG}
DOCKER_ID_USER=phaener
SERVER_NAME="git.haenerconsulting.com"
LDAP_SERVER="openldap.openldap"
LDAP_BASE_DN="dc=haenerconsulting.com,dc=com"
LDAP_FILTER="(uid=$)"
export LDAP_REQUIRE="group=cn=git-developers,ou=groups,dc=haenerconsulting,dc=com|user=admin"
