@echo off

rem issues a PUT photo request and uploads ../bilder/buschberg.jpg
rem needs curl in system path

rem source vars
call vars.bat

rem issue put request
curl -T donostia.jpg "%SERVER_URL%/photos?apiKey=666&name=donestia.jpg" > result.html
