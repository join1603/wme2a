#!/bin/bash
#issues a PUT rating request
#needs curl in system path

#source vars
source vars.sh

#issue put request
curl -T test_rating.xml $SERVER_URL/ratings > result.html
