resource "aws_launch_configuration" "lab-asg" {
    name                        = "${var.launch_configuration}"
    image_id                    = "${var.os}"
    instance_type               = "${var.instance_type}"
    key_name                    = "${var.accesskey}"
    security_groups             = ["${var.security_groups}"]
    enable_monitoring           = false
    ebs_optimized               = false

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }

}
