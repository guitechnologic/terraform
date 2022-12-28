resource "aws_s3_bucket" "first_bucket" {
  bucket = "ghg-consultoria-bucket" #nome do bucket nao pode ser igual a um já criado na aws mundial

}