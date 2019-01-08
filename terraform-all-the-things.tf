provider "aws" {
  #Leaving empty to source from environment variables
}

resource "aws_instance" "dev_tf_instance1" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.instance_subnet}"
  key_name      = "${var.ssh_key}"

  tags = {
    Name = "${var.environment}_test_tf_instance1"
    Deployment = "terraform"
    Hello = "World"
    OS = "OpenSuSe"
  }

}
