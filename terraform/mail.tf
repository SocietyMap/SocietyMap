provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_neptune_cluster" "society_map" {
  cluster_identifier      = "society-map-free"
  apply_immediately       = true
  iam_database_authentication_enabled = true
}

resource "aws_neptune_cluster_instance" "society_map_instance" {
  cluster_identifier = aws_neptune_cluster.society_map.id
  instance_class     = "db.t4g.medium"  # Free Tier eligible
  apply_immediately  = true
}

resource "aws_security_group" "neptune_sg" {
  name        = "neptune-society-map-sg"
  description = "Allow Neptune access"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 8182
    to_port     = 8182
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
