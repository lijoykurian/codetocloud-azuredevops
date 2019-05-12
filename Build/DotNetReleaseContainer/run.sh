#!/bin/bash 
export PATH_TO_ARTIFACTS=/systempath
export HOST_PATH_TO_ARTIFACTS=⁨/Users/lijoykurian/git/codetocloud-expenseentry-api/ExpenseEntry/ExpenseEntryApI/bin/Release/netcoreapp2.1/publish
export ARTIFACT_NAME=ExpenseEntry.zip
export APP_NAME=expenseentryapi
export DLL_NAME=ExpenseEntryApI.dll
export BUILD_NUMBER=1.2.3.4
docker run -d --name dotnetappcreator \
    -v /Users/lijoykurian/git/codetocloud-expenseentry-api/ExpenseEntry/ExpenseEntryApI/bin/Release/netcoreapp2.1/publish:$PATH_TO_ARTIFACTS \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e PATH_TO_ARTIFACTS=$PATH_TO_ARTIFACTS \
    -e ARTIFACT_NAME=$ARTIFACT_NAME \
    -e APP_NAME=$APP_NAME \
    -e DLL_NAME=$DLL_NAME \
    -e BUILD_BUILDNUMBER=$BUILD_NUMBER \
    jilsan-dotnet-release-container  \
    tail -f /dev/null 