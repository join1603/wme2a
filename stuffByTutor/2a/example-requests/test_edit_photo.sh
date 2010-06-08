#!/bin/bash
#issues a POST photo request to pic with id: 6 
#needs curl in system path

#source vars
source vars.sh

#issue put request
curl --data-binary @test_photo.xml "$SERVER_URL/photos?apiKey=666&id=6" > result.html
