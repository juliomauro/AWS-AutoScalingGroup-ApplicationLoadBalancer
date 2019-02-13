
resource "aws_security_group" "laboratorio-lb" {
  name        = "sg_${var.name}_lb"
  description = "Regras para LoadBalance"
    vpc_id  = "${var.vpc}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name       = "sg_${var.name}_lb"
    Componente = "Security Group"
    Ambiente   = "LAB"
    Plataforma = "WEB"
    Equipe     = "Infra"
    BU         = "Oruam"
    TTL        = "NA"
    TTLAction  = "NA"
  }
}