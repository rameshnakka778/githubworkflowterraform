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
  description = "creating the connection true or false"
  default = true
}

variable "conn_has_vpc" {
  description = "connection ha vpc true or false"
  default = true
}

variable "conn_name" {
  description = "enter the name of the connection"
  default = "RMSConnectionstest"
}

variable "conn_url" {
  description = "enter connection url"
  default = "jdbc:oracle:thin://10.145.82.96:1521/JSICLOF1"
}

variable "conn_user" {
  description = "enter the connection user name"
  default = "CMSPRD_BATCH"
}

variable "conn_pass" {
  description = "enter the connection password"
  default = "DEC06TST15"
}

variable "conn_sg_ids" {
  description = "enter the connection security group id"
  default = ["sg-08268a3778d2bd844"]
}

variable "conn_subnet" {
  description = "enter the connection subnet id"
  default = "subnet-0cc0807be894a6862"
}

variable "conn_azs" {
  description = "enter the connection availability zone"
  default = "eu-west-1a"
}

variable "conn_catalog_id" {
  description = "enter the connection catalog id"
  default = ""
}

variable "conn_type" {
  description = "enter the connection type"
  default = "JDBC"
}

variable "conn_description" {
  description = "enter the connection description"
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
  description = "enter the path of s3 where the files are placed"
  default = "./modules/glues3/wheelfiles/"
}

variable "s3_bucket_name_obj_upload" {
  description = "enter the s3 bucket name to upload the wheel files"
  default ="js-s3-aws-glue-bb"
}
variable "aws_secret_manager_credentials" {
  description = "enter secret credentials to store in secret manager"
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