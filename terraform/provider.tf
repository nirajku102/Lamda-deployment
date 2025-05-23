terraform {
  backend "s3" {
    bucket         = "lambda-bucket-uc01"
    key            = "terraform"
    region         = "us-east-1"
    encrypt        = true
  }
}
