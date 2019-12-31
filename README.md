# First quarter mini project


## Goals

Provision a new web app server with the following expectations

- [x] All project code and documentation is managed in Github. 
- [x] Application written with Python or Ruby.
- [x] Any scripts written in Python, Ruby and/or BASH.
- [x] Static Analysis checks passing.
- [x] Unit Tests and Integration Tests written.
- [x] Application runnable with a single click or command.
- [x] All prerequisites documented clearly in the README.md.
- [x] The web application endpoint must be served over SSL.

### Expected output

- The web application must supply a simple endpoint.
- The web app than must return the current timestamp and “Automation for the People!”.
- Must be over an SSL connection.

### Deployment

- One click deploy with a single command.
- Deploy the ECR
- Deploy the load balancer
- Deploy Fargate Resource

### Stetch Goals

- [x] Application is run within a docker container.
- [x] Application is deployed on AWS.
- [ ] Application is secured with some form of Identity Provider (OAuth, SAML, OpenID, etc.)

## Development Requirements

- AWS Fargate
- Docker
- Rspec
- Ruby 2.6
- Rubygems
- Sinatra microframework

## Depoloyment Requirements

- AWSCLI
- Clone the repo
- Docker

## Deployment Steps

Run `launch.sh {desired-stack-name}`.

### USAGE:

 User calls `launch-app stack-name`

### REQUIREMENTS:

* Valid AWS account (run aws configure)
* Docker

#### Miscellaneous

- Source <- GitHub
- Build <- docker build, docker push (to ecr), tests`
- Deploy <- fargate.yaml create