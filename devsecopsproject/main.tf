# Configure the AWS provider
provider "aws" {
  region = "eu-west-2" # Replace with your desired AWS region
}

# Create an S3 bucket
resource "aws_s3_bucket" "devsecopstest3" {
  bucket = "devsecopstest3112" # Replace with your unique bucket name
  }
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "devsecopstest3"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}
#this is a test