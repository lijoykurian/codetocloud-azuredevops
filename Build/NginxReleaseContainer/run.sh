#!/bin/bash 
export PATH_TO_ARTIFACTS=/systempath
export HOST_PATH_TO_ARTIFACTS=⁨/Users/lijoykurian/git/codetocloud-ui-app/dist/codetocloud-ui-app
export ARTIFACT_NAME=dist.zip
export APP_NAME=fastexpenseapp
export BUILD_NUMBER=1.2.3.4
docker run -d --name nginxappcreator \
    -v /Users/lijoykurian/git/codetocloud-ui-app/dist/codetocloud-ui-app:$PATH_TO_ARTIFACTS \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e PATH_TO_ARTIFACTS=$PATH_TO_ARTIFACTS \
    -e ARTIFACT_NAME=$ARTIFACT_NAME \
    -e APP_NAME=$APP_NAME \
    -e BUILD_BUILDNUMBER=$BUILD_NUMBER \
    jilsan-nginx-release-container  \
    tail -f /dev/null 