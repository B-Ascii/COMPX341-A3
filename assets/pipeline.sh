#!/bin/bash

if [$# -eq 0]
then
	echo "Need to supply an argument for commit message"
	exit
fi

npm install
if npm run build; 
then
	echo "Build Success"
else 
	echo "Build Fail"
	exit
fi

git add --all

git commit -m '$1'

git push

npm run start
