resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-dolly01"

  tags = {
    Name        = "My bucket-dolly"
    Environment = "Dev"
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}

module "ec2_instance" {
source = "./modules"
instance_type = var.instance_type
}

