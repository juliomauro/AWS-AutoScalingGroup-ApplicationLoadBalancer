output "Endereço do balanceador" {
  value = "${aws_lb.laboratorio.dns_name}"
}