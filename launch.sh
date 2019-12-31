#!/bin/bash

### USAGE:
#     User calls `launch-app stack-name`
### REQUIREMENTS:
# * Valid AWS account (run aws configure)
# * Docker
###

CORE_STACK_NAME=$1

# Create the ECR repo.

echo "Creating ECR Stack..."

aws cloudformation create-stack \
    --stack-name ${CORE_STACK_NAME}-ecr \
    --template-body file://infrastructure/templates/ecr.yaml \
    --parameters file://infrastructure/parameters/ecrparams.json

# Wait for it to come up.

aws cloudformation wait stack-create-complete --stack-name ${CORE_STACK_NAME}-ecr

# Log in to the ECR repo.

echo "Performing Docker actions..."

$(aws ecr get-login --no-include-email --region us-east-1)

ECR_REPO_URI=$(aws ecr describe-repositories --query 'repositories[].repositoryUri' --output text)

# Build, tag, and upload the Docker image.

docker build . -t ${CORE_STACK_NAME}

docker tag ${CORE_STACK_NAME}:latest ${ECR_REPO_URI}:latest

docker push ${ECR_REPO_URI}:latest

# Create the loadbalancer stack.

echo "Creating Load Balancer Stack..."

aws cloudformation create-stack \
    --stack-name ${CORE_STACK_NAME}-loadbalancer \
    --template-body file://infrastructure/templates/loadbalancer.yaml \
    --parameters file://infrastructure/parameters/loadbalancerparams.json

aws cloudformation wait stack-create-complete --stack-name ${CORE_STACK_NAME}-loadbalancer

# Deploying Fargate stack.

echo "Creating Fargate Stack..."

aws cloudformation create-stack \
    --stack-name ${CORE_STACK_NAME}-fargate \
    --template-body file://infrastructure/templates/fargate.yaml \
    --parameters file://infrastructure/parameters/fargateparams.json \
    --capabilities CAPABILITY_NAMED_IAM

aws cloudformation wait stack-create-complete --stack-name ${CORE_STACK_NAME}-fargate