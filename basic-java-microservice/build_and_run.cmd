@echo off

set AUTHOR_NAME=eaglebut
set IMAGE_NAME=basic_java_microservice:0.0.1
set CONTAINER_NAME=basic_java_microservice_test
set DATASOURCE_HOST=192.168.0.103

echo Building Docker image...
docker build -t %AUTHOR_NAME%/%IMAGE_NAME% .

echo Starting Docker container...
docker run -d --name %CONTAINER_NAME% -p 8080:8080 -e DATASOURCE_HOST=%DATASOURCE_HOST% %AUTHOR_NAME%/%IMAGE_NAME%
