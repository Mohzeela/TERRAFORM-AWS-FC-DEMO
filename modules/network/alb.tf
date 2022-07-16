
# /*==== The ALB ======*/
# resource "aws_lb" "alb" {
#   # count = var.create_lb ? 1 : 0

#   name               = var.alb_name
#   internal           = var.internal_alb
#   load_balancer_type = var.load_balancer_type
 
#   # count              = "${length(var.alb_security_groups)}"
#   security_groups    = var.security_groups
  
#   subnets            = var.public_subnets_cidr
#   idle_timeout       = var.idle_timeout
  

#   access_logs {
#     bucket  = var.s3_bucket
#     prefix  = "test-lb"
#     enabled = true
#   }

#   tags = {
#     Environment = "production"
#   }
# }

# /*==== Target Group ======*/
# resource "aws_alb_target_group" "alb_target_group" {
#   name     = var.target_group_name
#   port     = var.svc_port
#   protocol = "HTTP"
#   vpc_id   = aws_vpc.vpc.id
 
#   tags = {    
#     name = var.target_group_name   
#   }   
#   stickiness {    
#     type            = "lb_cookie"    
#     cookie_duration = 1800    
#     enabled         = var.target_group_sticky 
#   }   
#   health_check {    
#     healthy_threshold   = 3    
#     unhealthy_threshold = 10    
#     timeout             = 5    
#     interval            = 10    
#     path                = var.target_group_path   
#     port                = var.target_group_port 
#   }
# }

# # data "aws_instance" "instance_id" {
# #   instance_id = module.instance.aws_instance.test.id
# # }

# resource "aws_alb_target_group_attachment" "alb_target_group_attachment" {
#   target_group_arn = aws_alb_target_group.alb_target_group.arn
#   target_id        = var.instance_id
#   port             = 80
# }

# /*==== Listener ======*/
# resource "aws_alb_listener" "alb_listener" {
#   load_balancer_arn = aws_lb.alb.arn
#   port              = var.alb_listener_port
#   protocol          = var.alb_listener_protocol
 
#   default_action {
#     type             = "forward"
#     target_group_arn = aws_alb_target_group.alb_target_group.arn
#   }
# }


# resource "aws_alb_listener_rule" "listener_rule" {
#   depends_on   = [aws_alb_target_group.alb_target_group] 
#   listener_arn = aws_alb_listener.alb_listener.arn  
#   priority     = var.priority  
#   action {    
#     type             = "forward"    
#     target_group_arn = aws_alb_target_group.alb_target_group.id  
#   }   
#   condition {   
#     path_pattern {   
#       values = var.alb_path 
#   }
#  }
# }
# # resource "aws_security_group" "alb_sg" {
# #   count                   = "${length(var.alb_security_groups)}"
# #   name             = "${element(var.alb_security_groups, count.index)}"
# #   description = "security group to allow inbound/outbound from the VPC"
# #   vpc_id      = "${aws_vpc.vpc.id}"
# #   depends_on  = [aws_vpc.vpc]
# #   ingress {
# #     from_port = "0"
# #     to_port   = "0"
# #     protocol  = "-1"
# #     self      = true
# #   }
  
# #   egress {
# #     from_port = "0"
# #     to_port   = "0"
# #     protocol  = "-1"
# #     self      = "true"
# #   }
# #   tags = {
# #     Environment = "${var.environment}"
# #   }
# # }

# # /*==== VPC's Default Security Group ======*/
# # resource "aws_security_group" "default" {
# #   name        = var.security_group
# #   description = "Default security group to allow inbound/outbound from the VPC"
# #   vpc_id      = "${aws_vpc.vpc.id}"
# #   depends_on  = [aws_vpc.vpc]
# #   ingress {
# #     from_port = "0"
# #     to_port   = "0"
# #     protocol  = "-1"
# #     self      = true
# #   }
  
# #   egress {
# #     from_port = "0"
# #     to_port   = "0"
# #     protocol  = "-1"
# #     self      = "true"
# #   }
# #   tags = {
# #     Environment = "${var.environment}"
# #   }
# # }