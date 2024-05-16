resource "aws_alb" "alb-cluster" {
  depends_on         = [aws_eks_cluster.burguer]
  name               = "ALB-${var.projectName}"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["${var.subNetA}", "${var.subNetB}", "${var.subNetC}"]
  security_groups    = [data.aws_security_group.sg.id]
  idle_timeout       = 60
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_alb.alb-cluster.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}

output "dns_loadbalancer" {
  value = aws_alb.alb-cluster.dns_name
}