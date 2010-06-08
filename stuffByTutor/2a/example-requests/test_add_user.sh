#!/bin/bash
#issues a PUT user request
#needs curl in system path

#source vars
source vars.sh

#issue put request
curl -T test_user.xml $SERVER_URL/users > result.html
