resource "aws_security_group" "allow_rdp" {
  name          = "allow_rdp"
  description   = "Allow rdp traffic"


  ingress {

    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"

    cidr_blocks =  ["0.0.0.0/0"]
  }

}

resource "aws_security_group" "allow_ssh" {
  name          = "allow_ssh"
  description   = "Allow ssh traffic"


  ingress {

    from_port   = 22 
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_security_group" "allow_tls" {
  name          = "allow_tls"
  description   = "Allow TLS inbound traffic"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "allow_tls"
  }
}