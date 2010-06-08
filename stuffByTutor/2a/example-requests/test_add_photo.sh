#!/bin/bash
#issues a PUT photo request and uploads ../bilder/buschberg.jpg
#needs curl in system path

#source vars
source vars.sh

#issue put request
curl -T ../bilder/buschberg.jpg "$SERVER_URL/photos?apiKey=666&name=test.jpg" > result.html
