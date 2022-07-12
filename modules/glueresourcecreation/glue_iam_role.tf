data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}
resource "aws_iam_role" "js_dpp1_glue1" {
  name                 = "ramesh-${var.service_name}-${var.environment}-glue-service-role"
  permissions_boundary = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:policy/ccoe/js-developer"
  assume_role_policy   = file("policies/grada_product_nonprd_glue_service_role_test.json")
}

resource "aws_iam_role_policy" "js_dpp1_glue1_glue_policy" {
  name = "ramesh-${var.service_name}-${var.environment}-CloudWatchFullAccess"
  role = aws_iam_role.js_dpp1_glue1.id
  policy =file("policies/CloudWatchFullAccesspolicy.json.tpl")
}


resource "aws_iam_role_policy" "js_dpp1_glue1_policy1" {
  name = "ramesh-${var.service_name}-${var.environment}-AWSGlueServiceRole"
  role = aws_iam_role.js_dpp1_glue1.id
  policy =file("policies/AWSGlueServiceRolepolicy.json.tpl")
}

resource "aws_iam_role_policy" "js_dpp1_glue1_policy2" {
  name = "ramesh-${var.service_name}-${var.environment}-dpp_s3_read_access"
  role = aws_iam_role.js_dpp1_glue1.id
  policy =file("policies/grada_product_nonprod_s3_read_access.json.tpl")
}

resource "aws_iam_role_policy" "js_dpp1_glue1_policy3" {
  name = "ramesh-${var.service_name}-${var.environment}-SecretsManagerReadWrite"
  role = aws_iam_role.js_dpp1_glue1.id
  policy =file("policies/SecretsManagerReadWrite.json.tpl")
}
