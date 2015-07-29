#!/bin/bash
aws s3 cp ./ s3://nimbusscale-cfn/ --recursive --exclude "*" --include "*.json"
aws cloudformation create-stack --stack-name "network" --parameters ParameterKey="Prefix",ParameterValue="TEST-" ParameterKey="VpcIpPrefix",ParameterValue="192.168" --template-url "https://s3-us-west-2.amazonaws.com/nimbusscale-cfn/network.json" --capabilities CAPABILITY_IAM
#aws cloudformation update-stack --stack-name "network" --parameters ParameterKey="Prefix",ParameterValue="TEST-" --template-url "https://s3-us-west-2.amazonaws.com/nimbusscale-cfn/network.json" --capabilities CAPABILITY_IAM



