#!/bin/bash

# #####################
# Author: Jay Shenkar
# Date: 06-06-2024
# 
# The Script will create a report of all the active AWS Resources 
#
# Version: v1
#
# #####################

# Services to be Reported: 
#   EC2
#   S3
#   IAM Users
#   Lambda Functions

# set -x

echo "Displaying List of S3 Buckets: " > reportfile
aws s3 ls >> reportfile

echo "" >> reportfile
echo "Displaying List of EC2 Instances: " >> reportfile
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> reportfile

echo "" >> reportfile
echo "Displaying List of Lambda Functions: " >> reportfile
aws lambda list-functions | jq '.Functions[].FunctionName' >> reportfile

echo "" >> reportfile
echo "Displaying List of IAM Users: " >> reportfile
aws iam list-users | jq '.Users[].UserId' >> reportfile

echo "" >> reportfile
echo "****************END OF REPORT********************" >> reportfile
