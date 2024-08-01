# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  #ami = "ami-0742b4e673072066f"
  ami = "ami-0427090fd1714168b"
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}