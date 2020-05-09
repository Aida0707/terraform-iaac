resource "aws_instance" "dev" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name      =     "${aws_key_pair.us-east-1-key.key_name}"
  vpc_security_group_ids = ["sg-0c702dc82f44657b7"]
  #user_data = "${file("user_data.sh")}"
  subnet_id = "${aws_subnet.private1.id}"
 tags = "${var.tags}"
  
}