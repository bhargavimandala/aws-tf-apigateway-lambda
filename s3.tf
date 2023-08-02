resource "aws_s3_bucket" "s3-lambda" {
  bucket = "my-tf-lambda-apigateway-bhargavi"

}

terraform {
  backend "s3" {
    bucket = "my-tf-lambda-apigateway-bhargavi"
    key    = "terraform.tfstate"
    region = "eu-west-2"
    profile = "terraform"
  }
}