#!/bin/bash

npm install
if npm run build; 
then
	echo "Build Success"
else 
	echo "Build Fail"
	exit
fi

git add --all

git commit -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"

git push

npm run start
