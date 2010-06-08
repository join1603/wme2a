#!/bin/bash
#issues a PUT comment request
#needs curl in system path

#source vars
source vars.sh

#issue put request
curl -T test_comment.xml $SERVER_URL/comments > result.html
