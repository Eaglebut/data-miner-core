@echo off

set AUTHOR_NAME=eaglebut
set IMAGE_NAME=basic_java_microservice:0.0.1
set CONTAINER_NAME=basic_java_microservice_test

echo Building Docker image %AUTHOR_NAME%/%IMAGE_NAME
docker build -t %AUTHOR_NAME%/%IMAGE_NAME% .

echo Pushing to dockerhub...
docker push  %AUTHOR_NAME%/%IMAGE_NAME%
