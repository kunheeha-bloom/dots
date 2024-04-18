# ECR Docker login
alias ecrlogin="aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 585600980607.dkr.ecr.eu-west-2.amazonaws.com"
