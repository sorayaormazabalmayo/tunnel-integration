#!/bin/bash

# Variables 

branchName="sign/HelloWorld-$(date +%Y%m%d-%H%M%S)"
targetFileName="targets/HelloWorld.go"
targetFileSHA256=$(sha256sum targets/HelloWorld.go | awk '{print $1}')

echo "Copy these commands for pushing changes"
echo "git checkout -b ${branchName}"
echo "git add ${targetFileName}"
echo "git commit -m ${targetFileSHA256}"
echo "git push origin ${branchName}"
