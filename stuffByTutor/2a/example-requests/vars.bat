@echo off

rem vars file, to be sourced from the other scripts

rem url to REST-Webservice
SET SERVER_URL=http://localhost/wmephp/

rem add tools\win to path for missing
SET PATH=%PATH%;%CD%\tools\win