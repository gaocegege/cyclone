#!/bin/bash
#
# Usage: create-version.sh <service id>

if [[ $# -ne 1 ]]; then
	echo "Arguments error."
	echo "Usage: create-version.sh <service id>"
	exit 1
fi

curl -sS -X POST -H "Content-Type:application/json" -d "{
   \"name\": \"v0.1.1\",
   \"description\": \"just for test\",
   \"service_id\": \"$1\",
   \"operation\": \"integration\"
}" "http://118.184.0.105:7099/api/v0.1/fake-user-id/versions"
