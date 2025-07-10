
resource "aws_instance" "web" {
  ami = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  #availability_zone = "us-east-1a"
  subnet_id = "subnet-0f33c594840142436"
  key_name = "aws_key_pair_deployer.key_name"
  #vpc_security_group_ids = [aws_security_group.allow_tls]
  user_data = file("apache.sh")

  tags = {
    Name = "HelloWorld"
  }
}
  