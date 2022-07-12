 variable "environment" {
   type    = string
   default = "dev"
 }
 variable "access_key" {
  default = "AKIAYMLGKE27IVYYTJF4"
   
 }
 variable "secret_key" {
  default = "nXcUJmTXsjP5P7e/o7lE8bFDxTLptMeVvXo8cJPf"
   
 }
variable "my_profile" {
  default = "js-dpp1"
  
}

variable "my_region" {
  type    = string
  default = "eu-west-1"
}
variable "max_concurrent_runs" {
  default = 1
}

 variable "service_name" {
   description = "Name of the service"
   type        = string
   default     = "blackberry-basic"
 }

# variable "repo_name" {
#   description = "Name of the service"
#   type        = string
#   default     = "blackberryterraform"
# }

variable "create_connection" {
  default = true
}

variable "conn_has_vpc" {
  default = true
}

variable "conn_name" {
  default = "RMSConnectionstest"
}

variable "conn_url" {
  default = "jdbc:oracle:thin://10.145.82.96:1521/JSICLOF1"
}

variable "conn_user" {
  default = "CMSPRD_BATCH"
}

variable "conn_pass" {
  default = "DEC06TST15"
}

variable "conn_sg_ids" {
  default = ["sg-08268a3778d2bd844"]
}

variable "conn_subnet" {
  default = "subnet-0cc0807be894a6862"
}

variable "conn_azs" {
  default = "eu-west-1a"
}

variable "conn_catalog_id" {
  default = ""
}

variable "conn_type" {
  default = "JDBC"
}

variable "conn_description" {
  default = "This is for testing by Ramesh"
}

variable "conn_criteria" {
  type    = list
  default = []
}

variable "application_source_branch" {
  description = "Branch of repository containing source code"
  type        = string
  default     = "master"
}

# variable "account_number" {
#   description = "AWS account number"
#   type        = string
# }

variable "s3_upload_obj_path" {
  default = "../modules/blackberry_infra/glues3/wheelfiles/"
}

variable "s3_bucket_name_obj_upload" {
  default ="js-s3-aws-glue-bb"
}
variable "aws_secret_manager_credentials" {
   default     = <<EOF
{
    "user": "CMSPRD_BATCH",
    "password": "DEC06TST15",
    "host" : "10.145.82.96",
    "port" : "1521",
    "sid"  : "JSICLOF1",
    "rms_owner" : "cmsprd_owner",
    "ba_owner"  :  "dwi_batch_prd",
    "tuprm_owner" : "NFPPRD_OWNER"
    }
EOF
  
}