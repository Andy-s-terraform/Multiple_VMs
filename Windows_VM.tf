resource "aws_instance" "Windows_VM" {
  ami             = "ami-08698c6c1186276cc"
  instance_type   = "t2.micro"
  key_name        = "Terraform-Key"
  security_groups = [aws_security_group.allow_rdp.name]
  tags            = {
    name          = "Windows_VM"
  }
}
