resource "aws_instance" "web" {
  ami           = "ami-04893cdb768d0f9ee"
  instance_type = var.instance_type
 tags = {
  Name = "HelloWorld"
  }
}
