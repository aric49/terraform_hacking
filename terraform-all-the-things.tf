provider "aws" {
  #Leaving empty to source from environment variables
}

resource "aws_instance" "tf_instance1" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.instance_subnet}"
  key_name      = "${var.ssh_key}"
  ebs_optimized = "true"

  root_block_device {
    volume_size = "${var.root_volume_size}"
    volume_type = "${var.root_volume_type}"
  }

  ebs_block_device {
    volume_size = "${var.data_drive_volume_size}"
    volume_type = "${var.data_drive_volume_type}"
    device_name = "/dev/sdb"
    delete_on_termination = true
  }

 #TODO: Provisioners don't work with containerized terraform!
 # provisioner "file" {
 #   source = "scripts/provision.sh"
 #   destination = "/tmp/script.sh"
 # }
 # provisioner "remote-exec" {
 #   inline = [
 #     "chmod +x /tmp/script.sh",
 #     "sudo bash /tmp/script.sh"
 #   ]
 # }

  tags = {
    Name = "${var.environment}_tf_instance1"
    Deployment = "terraform"
    Hello = "World"
    OS = "Ubuntu"
  }

}

resource "aws_instance" "tf_instance2" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.instance_subnet}"
  key_name      = "${var.ssh_key}"
  ebs_optimized = "true"

  root_block_device {
    volume_size = "${var.root_volume_size}"
    volume_type = "${var.root_volume_type}"
  }

  ebs_block_device {
    volume_size = "${var.data_drive_volume_size}"
    volume_type = "${var.data_drive_volume_type}"
    device_name = "/dev/sdb"
    delete_on_termination = true
  }

 #TODO: Provisioners don't work with containerized terraform!
 # provisioner "file" {
 #   source = "scripts/provision.sh"
 #   destination = "/tmp/script.sh"
 # }
 # provisioner "remote-exec" {
 #   inline = [
 #     "chmod +x /tmp/script.sh",
 #     "sudo bash /tmp/script.sh"
 #   ]
 # }

  tags = {
    Name = "${var.environment}_tf_instance2"
    Deployment = "terraform"
    Hello = "World"
    OS = "Ubuntu"
  }

}


resource "aws_instance" "tf_instance3" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.instance_subnet}"
  key_name      = "${var.ssh_key}"
  ebs_optimized = "true"

  root_block_device {
    volume_size = "${var.root_volume_size}"
    volume_type = "${var.root_volume_type}"
  }

  ebs_block_device {
    volume_size = "${var.data_drive_volume_size}"
    volume_type = "${var.data_drive_volume_type}"
    device_name = "/dev/sdb"
    delete_on_termination = true
  }

 #TODO: Provisioners don't work with containerized terraform!
 # provisioner "file" {
 #   source = "scripts/provision.sh"
 #   destination = "/tmp/script.sh"
 # }
 # provisioner "remote-exec" {
 #   inline = [
 #     "chmod +x /tmp/script.sh",
 #     "sudo bash /tmp/script.sh"
 #   ]
 # }

  tags = {
    Name = "${var.environment}_tf_instance3"
    Deployment = "terraform"
    Hello = "World"
    OS = "Ubuntu"
  }
}