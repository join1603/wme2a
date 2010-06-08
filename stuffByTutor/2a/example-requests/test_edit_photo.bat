@echo off
rem issues a POST photo request to pic with id: 56 
rem needs curl in system path

rem source vars
call vars.bat

rem issue put request
curl --data-binary @test_photo.xml "%SERVER_URL%/photos?apiKey=666&id=56" > result.html
