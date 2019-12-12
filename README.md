First quarter mini project
=============

Required components
----------------
- Ruby 2.6
- Sinatra microframework
- Rubygems
- Docker
- AWS Fargate
- CodePipeline/CodeBuild/CodeDeploy
- Rspec


Provision a new web app server with the following expectations
------- 
- All project code and documentation is managed in Github.
- Application written with Python or Ruby.
- Any scripts written in Python, Ruby and/or BASH.
- Static Analysis checks passing.
- Unit Tests and Integration Tests written.
- Application runnable with a single click or command.
- All prerequisites documented clearly in the README.md.
- The web application endpoint must be served over SSL.



Expected output
-------------
- The web application must supply a simple endpoint.
The web app than must return the current timestamp and “Automation for the People!”.
- Must be over an SSL connection.

Deploy
---

- Deploy the ECR 
- CodePipeline; CodeDeploy (Create the image) -> ECR (zip . artifacts/version.zip)
- Deploy Fargate Resource

Source <- GitHub
Build <- docker build, docker push (to ecr), tests`
Deploy <- fargate.yaml create OR update resoruce via changeset.