#Private Subnet
resource "aws_subnet" "private1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.cidr_block_private1}"

}

resource "aws_subnet" "private2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.cidr_block_private2}"
}

resource "aws_subnet" "private3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.cidr_block_private3}"
}

# Nat Gateway

resource "aws_eip" "nat" {
  vpc      = true
}

resource "aws_nat_gateway" "gw1" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.private1.id}"

  
tags =  {
    Environment = "${var.Environment}"
      Department = "${var.Department}"
      Team = "${var.Team}"
      Created_by = "${var.Created_by}"
   }
}
  