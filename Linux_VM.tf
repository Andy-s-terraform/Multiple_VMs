resource "aws_instance" "Linux_VM" {
  ami             = "ami-06178cf087598769c"
  instance_type   = "t2.micro"
  key_name        = "Linux-Key"
  security_groups = [aws_security_group.allow_tls.name, aws_security_group.allow_ssh.name]
  
  tags            = {
    name          = "Linux_VM"
  }
}