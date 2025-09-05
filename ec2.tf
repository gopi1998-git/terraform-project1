
resource "aws_instance" "webserver" {
   ami_id = var.ami
   instance_type = var.instancetype
   key_name = var.keyname

   tags = {
     Name =var.name
   }
}