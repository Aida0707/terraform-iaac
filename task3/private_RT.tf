resource "aws_route_table_association" "b4" {
  subnet_id      = "${aws_subnet.private1.id}"
  route_table_id = "${aws_route_table.r.id}"

}
resource "aws_route_table_association" "b5" {
  subnet_id      = "${aws_subnet.private2.id}"
  route_table_id = "${aws_route_table.r.id}"
  
}
resource "aws_route_table_association" "b6" {
  subnet_id      = "${aws_subnet.private3.id}"
  route_table_id = "${aws_route_table.r.id}"
 
}
  