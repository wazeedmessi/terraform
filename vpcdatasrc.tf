data "aws_vpc" "CUSTOMVPC" {
  tags = {
    "Name" = "CUSTOMVPC"
  }
}

data "aws_subnets" "public_subnets" {
  tags = {
    "Type" = "Public"
  }

}

data "aws_subnets" "private_subnets" {
  tags = {
    "Type" = "Private"
  }

}