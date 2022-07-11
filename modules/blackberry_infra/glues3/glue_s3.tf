# Creating an S3 bucket
resource "aws_s3_bucket" "demos3" {

    for_each = toset(var.bucket_names_list)
    bucket = each.key
    #acl = var.acl_value 
}
# Uploading files to selected object
resource "aws_s3_object" "object" {
  for_each = fileset(var.upload_obj_path, "**")
  bucket = "js-s3-aws-glue-bb"
  key    = each.value
  source = "${var.upload_obj_path}${each.value}"
}