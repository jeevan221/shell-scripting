#!/bin/bash
##########
#author:jeevan
#Date: 13/02/2024
#
#Version :v1
#
# This script will report the AWS resource usage
#####
set +x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM user

###########

#AWS s3 lists
echo"print list s3 buckets"
aws s3 ls

#AWS EC2
echo "print ec2 instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'

#AWS Lambda
echo"print aws lambda functions"
aws lambda list-functions

#AWS IAM Users
echo"print the iam user list"
aws iam list-users

