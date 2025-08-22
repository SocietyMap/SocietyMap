provider "aws" {
  region = "us-west-2"  # or your preferred region
  profile = "terraform-admin"
}

resource "aws_iottwinmaker_workspace" "society_map" {
  workspace_id = "society-map"
  role         = aws_iam_role.twinmaker_exec.arn
  s3_location  = aws_s3_bucket.society_map_storage.arn
  description  = "Digital twin workspace for Society Map"
}

resource "aws_s3_bucket" "society_map_storage" {
  bucket = "amandeep-society-map-${random_id.suffix.hex}"
  force_destroy = true
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_iam_role" "twinmaker_exec" {
  name = "twinmaker-exec-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = "iottwinmaker.amazonaws.com"
      },
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "twinmaker_policy" {
  role       = aws_iam_role.twinmaker_exec.name
  policy_arn = "arn:aws:iam::aws:policy/AWSIoTTwinMakerFullAccess"
}
