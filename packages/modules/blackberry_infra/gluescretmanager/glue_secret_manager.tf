# Creating a AWS secret for database master account (Masteraccoundb) 
resource "aws_secretsmanager_secret" "aws-oracle-connection1" {
   name = "aws_glue_RMS10_oracle2"
}
# Creating a AWS secret versions for database master account (Masteraccoundb)
resource "aws_secretsmanager_secret_version" "sversion1" {
  secret_id = aws_secretsmanager_secret.aws-oracle-connection1.id
  secret_string = var.secret_manager_credentials
}
# Importing the AWS secrets created previously using arn.
data "aws_secretsmanager_secret" "aws-oracle-connection1" {
  arn = aws_secretsmanager_secret.aws-oracle-connection1.arn
}
# Importing the AWS secret version created previously using arn.
data "aws_secretsmanager_secret_version" "creds1" {
  secret_id = data.aws_secretsmanager_secret.aws-oracle-connection1.arn
}
# After importing the secrets storing into Locals
locals {
  aws_oracle_connection_creds = jsondecode(data.aws_secretsmanager_secret_version.creds1.secret_string)
}