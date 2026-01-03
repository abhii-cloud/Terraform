#creating VPC

resource "aws_vpc" "myvpc" {
 cidr_block = var.cidr
}

#Creating Subnets
resource "aws_subnet" "sub1"{
   vpc_id                   = aws_vpc.myvpc.id
   cidr_block               = "192.168.1.0/24"
   availability_zone        = "ap-south-1a"
   map_public_ip_on_launch  = true

}
resource "aws_subnet" "sub2" {
  vpc_id                   = aws_vpc.myvpc.id
  cidr_block               = "192.168.2.0/24"
  availability_zone        = "ap-south-1b"
  map_public_ip_on_launch  = true
}
