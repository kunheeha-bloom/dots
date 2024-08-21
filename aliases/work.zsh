# ECR Docker login
alias ecrlogin="aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 585600980607.dkr.ecr.eu-west-2.amazonaws.com"
# TrueLayer CockroachDB connect
alias cockroach-tl="cockroach sql --url \"postgresql://kunheeha@sugar-snapper-5512.6zw.aws-eu-west-1.cockroachlabs.cloud:26257/truelayer_transactions?sslmode=verify-full\""
# Set gpg_tty to current
alias sign="export GPG_TTY=$(tty)"
