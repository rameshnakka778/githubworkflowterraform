# Requirements
|Name|Version|
|----|-------|
|aws_provider|>=4.20|

# Attributes used in config
|Name|Type|
|----|----|
|[aws_glue_connection.glue_connection_vpc](https://registry.terraform.io/providers/brandon-bird-yolabs/aws/latest/docs/resources/glue_connection)|Resource|
|[aws_iam_role.grada_product_nonprd_glue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)|Resource|
|[aws_iam_role_policy.grada_product_nonprd_glue_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy)|Resource|
|[aws_s3_object.upload_glue_script](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object)|Resource|
|[aws_glue_job.glue_job](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_job)|Resource|
|[aws_s3_bucket.demos3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)|Resource|
|[aws_secretsmanager_secret.aws-oracle-connection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret)|Resource|
|[aws_secretsmanager_secret_version.sversion](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version)|Resource|
|[aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity)|Data source|
|[aws_secretsmanager_secret.aws-oracle-connection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret)|Data Source|
|[aws_secretsmanager_secret_version.creds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret_version)|Data Source|

