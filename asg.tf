resource "aws_autoscaling_group" "lab-asg" {
    desired_capacity          = "${var.minsize}"
    health_check_grace_period = 60
    health_check_type         = "EC2"
    launch_configuration      = "lab-asg"
    max_size                  = "${var.maxsize}"
    min_size                  = "${var.minsize}"
    name                      = "${var.name}"
    vpc_zone_identifier       = ["subnet-05f89930ac797da20", "subnet-05fcebf163b6d4e2c", "subnet-004b83919459ea399", "subnet-038f1350b72737f14", "subnet-0bddfed2369135611", "subnet-0425d67c715b005fb"]
    target_group_arns         = ["${aws_lb_target_group.lab-http80.id}"]

    tag {
        key   = "Name"
        value = "${var.name}"
        propagate_at_launch = true
    }

}