output "endpoint LB" {
  value = "${aws_lb.laboratorio.dns_name}"
}