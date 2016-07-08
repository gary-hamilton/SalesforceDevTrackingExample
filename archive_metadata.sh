#!/bin/bash

# check if git is initialized
ls .git > /dev/null
if [ $? != 0 ] ; then
	git init
fi
BUILD_ID="$1" 
echo "Build: $BUILD_ID"
echo 	"git add *"
git add * 
echo 	"git commit -a -m \"$BUILD_ID\""
git commit -a -m "$BUILD_ID"
git tag $BUILD_ID
