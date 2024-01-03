resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-tf-test-bucketxyzz"
  tags = {
    Name = "Riya"
  }
}

resource "aws_s3_bucket_versioning" "my-bucket_versioning" {
  bucket = aws_s3_bucket.my-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = "my-instance"
  }
}