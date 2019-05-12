#!/bin/bash 
export PATH_TO_ARTIFACTS=/systempath
export HOST_PATH_TO_ARTIFACTS=⁨/Users/lijoykurian/git/codetocloud-org-microservice/organizationapi/target
export ARTIFACT_NAME=organizationapi-0.0.1-SNAPSHOT.jar
export APP_FOLDER=/app
export APP_CLASSNAME=com.jilsan.expenses.organizationapi.OrganizationapiApplication
export APP_NAME=organizationapi
export BUILD_NUMBER=1.2.3.4
echo $PATH_TO_ARTIFACTS
docker run -d --name springbootappcreator \
 -v /Users/lijoykurian/git/codetocloud-org-microservice/organizationapi/target:$PATH_TO_ARTIFACTS \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -e PATH_TO_ARTIFACTS=$PATH_TO_ARTIFACTS \
 -e ARTIFACT_NAME=$ARTIFACT_NAME \
 -e APP_FOLDER=$APP_FOLDER \
 -e APP_CLASSNAME=$APP_CLASSNAME \
 -e APP_NAME=$APP_NAME \
 -e BUILD_BUILDNUMBER=$BUILD_NUMBER \
 jilsan-springboot-appcreator  \
 tail -f /dev/null 