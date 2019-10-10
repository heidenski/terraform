resource "aws_instance" "terraform" {
  instance_count     = 2
  tags_name        = "terraform"
  tags_hostname        = "terraform"
  tags_title_number    = 1

  ami                         = "ami-04cf17f75ce7f495b"
  instance_type               = "t3a.nano"
  key_name                    = "radenda-triadibersamadev"
  monitoring                  = true
  vpc_security_group_ids      = "sg-0ec449b6e0115005c"
  subnet_id                   = "subnet-446c7c0d"
  associate_public_ip_address = false
  user_data              = "./provisioning/userdata.txt"

  root_block_device = {
    volume_size = "100"
  }

  tags = {
    Environtment    = "production"
    CreateBy        = "terraform"
}
