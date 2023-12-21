resource "aws_instance" "messi" {
  ami           = data.aws_ami.ubuntu_ami.id #var.ami_id #"ami-0e83be366243f524a" # here we need to mention ami id for count&foreach but for variable we write var.ami_id
  key_name      = "ohio"
  instance_type = var.inst_type                          #each.key #each.value (we need to mention here the .key or .value anyone) and forvariable we mention var.inst_type 
  subnet_id     = data.aws_subnets.public_subnets.ids[0] #this is to launch instance in specific vpc with one subnet mentioned
  tags = merge(
    var.ec2_tags,
    local.demo_tags
  )
  #lifecycle {
  #create_before_destroy = true
  #}
}

