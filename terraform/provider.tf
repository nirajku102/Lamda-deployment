terraform {
  backend "s3" {
    bucket         = "heoolo-world-bucket"
    key            = "terraform/statefile.tfstate"
    region         = "eu-west-2"
    encrypt        = true
  }
}