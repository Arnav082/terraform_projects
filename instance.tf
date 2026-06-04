resource "aws_instance" "terraform" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  vpc_security_group_ids = [
    aws_security_group.web-sg.id
  ]

  key_name = "tkey"

  tags = {
    Name = "terraforminsta"
  }

}

resource "aws_ec2_instance_state" "terraform" {
  instance_id = aws_instance.terraform.id
  state       = "running"
}
