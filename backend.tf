terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket-dolly01"
    dynamodb_table = "terraform-state-lock-dynamo"
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
  }
}

