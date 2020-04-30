resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"

tags =  {
    Environment = "${var.Environment}"
      Department = "${var.Department}"
      Team = "${var.Team}"
      Created_by = "${var.Created_by}"
   }
}