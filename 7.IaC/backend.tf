resource "aws_s3_bucket" "tf_state_backet" {
  bucket = "itra-tf-state-s3-backet-q1q1q"
}

resource "aws_dynamodb_table" "itra-dynomodb" {
  name         = "itra-dynomodb"
  hash_key     = "hashID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}
