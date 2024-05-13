resource "aws_alb" "alb-cluster" {
  depends_on         = [aws_eks_cluster.burguer]
  name               = "ALB-${var.projectName}"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["${var.subNetA}", "${var.subNetB}", "${var.subNetC}"]
  security_groups    = [data.aws_security_group.sg.id]
  idle_timeout       = 60
}

resource "aws_lb_target_group" "target-group" {
  name        = "tg-cluster-burguer"
  port        = 30007
  target_type = "instance"
  protocol    = "HTTP"

  vpc_id = data.aws_vpc.default.id

  health_check {
    path     = "/actuator/health"
    port     = 30007
    matcher  = "200"
    interval = 90
    timeout  = 60
  }
}

resource "aws_lb_target_group_attachment" "attach" {
  depends_on       = [aws_eks_cluster.burguer]
  target_group_arn = aws_lb_target_group.target-group.arn
  target_id        = data.aws_instance.ec2.id
  port             = 30007
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_alb.alb-cluster.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group.arn
  }
}

output "dns_loadbalancer" {
  value = aws_alb.alb-cluster.dns_name
}