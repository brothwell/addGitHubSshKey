#!/bin/bash
read -p "Enter github account email address: " email
echo "Using email $email"
echo
if [ ! -f ~/.ssh/id_rsa ]; then
  ssh-keygen -t rsa -b 4096 -C "$email"
  ssh-add ~/.ssh/id_rsa
fi
pub=`cat ~/.ssh/id_rsa.pub`
read -p "Enter github personal access token: " token
echo
read -p "Enter github OTP: " otp
echo "Using otp $otp"
echo
read -p "Enter github ssh key name: " keyname
curl -X POST -d "{\"title\":\"$keyname\",\"key\":\"$pub\"}" -H "Authorization: token $token" -H "X-GitHub-OTP: $otp" -H "Accept: application/vnd.github.v3+json" https://api.github.com/user/keys