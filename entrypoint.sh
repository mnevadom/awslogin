#!/bin/sh
set -e

region=$1
aws_access_key_id=$2
aws_secret_access_key=$3

aws --version

aws configure set default.region $region
aws configure set aws_access_key_id $aws_access_key_id
aws configure set aws_secret_access_key $aws_secret_access_key

cat ~/.aws/config
cat ~/.aws/credentials