resource "aws_security_group" "allow-ssh" {
  name = "allow-ssh"
  vpc_id = "${aws_vpc.main.id}"
  description = "SG to allow inbound SSH and HTTP access"

  
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

egress {
    from_port   = "0"
    to_port     = "65535"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "Allow SSH and HTTP"
    VPC = "${aws_vpc.main.id}"
    
  }
}
