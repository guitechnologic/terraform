resource "aws_s3_bucket" "first_bucket" {
  bucket = "guilherme-remote-state"

  versioning {
    enabled = true
  }
}
