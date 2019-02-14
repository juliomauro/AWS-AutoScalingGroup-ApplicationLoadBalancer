resource "aws_lb" "laboratorio" {
#    depends_on = ["aws_autoscaling_group.lab-asg"]
    name = "${var.name}"
    subnets         = ["subnet-05f89930ac797da20", "subnet-05fcebf163b6d4e2c", "subnet-004b83919459ea399", "subnet-038f1350b72737f14", "subnet-0bddfed2369135611", "subnet-0425d67c715b005fb"]
    security_groups = ["${var.security_groups}"]
    load_balancer_type = "application"
    internal = "${var.alb_internal}"

    tags {
        Name       = "${var.name}"
        Componente = "LoadBalance"
        Ambiente   = "LAB"
        Plataforma = "WEB"
        Equipe     = "Infra"
        BU         = "Oruam"
        TTL        = "NA"
        TTLAction  = "NA"
    }
}

resource "aws_lb_target_group" "lab-http80" {
    name = "${var.name}-port80"
    port = 80
    protocol = "HTTP"
    vpc_id  = "${var.vpc}"
    health_check {    
        healthy_threshold   = 2    
        unhealthy_threshold = 2    
        timeout             = 3    
        interval            = 20    
        path                = "/hostname.php"    
        port                = "80"  
  }
      tags {
        Name       = "${var.name}"
        Componente = "TargetGroup"
        Ambiente   = "LAB"
        Plataforma = "WEB"
        Equipe     = "Infra"
        BU         = "Oruam"
        TTL        = "NA"
        TTLAction  = "NA"
    }
}

resource "aws_lb_listener" "laboratorio-80" {
    depends_on = ["aws_lb_target_group.lab-http80"]
    load_balancer_arn = "${aws_lb.laboratorio.arn}"
    port = 80
    protocol = "HTTP"
    default_action {
        type             = "forward"
        target_group_arn = "${aws_lb_target_group.lab-http80.arn}"
    }

}
