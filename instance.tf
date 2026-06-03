resource "aws_instance" "terraform" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = "tkey"

  tags = {
    Name = "terraforminsta"
  }

}