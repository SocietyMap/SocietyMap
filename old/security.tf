resource "aws_security_group" "neptune_sg" {
  name        = "neptune-society-map-sg"
  description = "Allow Neptune access"
  

  ingress {
    from_port   = 8182
    to_port     = 8182
    protocol    = "tcp"
    cidr_blocks = ["50.67.32.227/32"]  # Replace with your IP
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
