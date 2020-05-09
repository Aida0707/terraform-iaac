provider "aws" {
  region = "us-east-1"
  version = "2.59"
}

// Creates Key
resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "aidas_bastion-output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}


// Creates instance
resource "aws_instance" "web-output" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}

// Creates sec Group
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_february"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

// Creates Route53
resource "aws_route53_record" "www" {
  zone_id = "Z09345961KG8PI465K96B"
  name    = "www.dzhaida.com"
  type    = "A"
  ttl     = "300"
  records = ["3.89.209.165"]
}

// Outputs everything

output "key_pair" {
  value = "${aws_key_pair.us-east-1-key-output.key_name}"
}

output "instance_id" {
  value = "${aws_instance.web-output.id}"
}

output  "instance_arn" {
  value = "${aws_instance.web-output.arn}"
}

output  "instance_public_ip" {
  value = "${aws_instance.web-output.public_ip}"
}
output  "instance_public_DNS" {
  value = "${aws_instance.web-output.public_dns}"
}
output "message" {
  value       = "Login to wordpress and reset passwd"
}
