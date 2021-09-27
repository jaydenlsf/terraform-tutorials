# EC2 instance
resource "aws_instance" "myec2vm" {
  ami                    = data.aws_ami.amzlinux.id
  instance_type          = var.instance_type
  user_data              = file("${path.module}/app1-install.sh")
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  count                  = 2
  tags = {
    "Name" = "Count-Demo-${count.index}"
  }
}
