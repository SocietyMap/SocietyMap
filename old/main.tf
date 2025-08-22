provider "aws" {
  region = var.aws_region
  profile = "default"
}

resource "aws_neptune_cluster" "society_map" {
  cluster_identifier      = "society-map-free"
  apply_immediately       = true
  iam_database_authentication_enabled = true
}

resource "aws_neptune_cluster_instance" "society_map_instance" {
  count                   = 1
  cluster_identifier      = aws_neptune_cluster.society_map.id
  instance_class          = "db.t4g.medium"  # Free Tier eligible
  apply_immediately       = true
}
