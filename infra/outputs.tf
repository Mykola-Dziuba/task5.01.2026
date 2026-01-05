// infra/outputs.tf
output "cloudfront_url" {
  value       = "https://${aws_cloudfront_distribution.this.domain_name}"
  description = "CloudFront URL"
}

output "alb_dns_name" {
  value       = aws_lb.this.dns_name
  description = "ALB DNS name"
}

output "ecs_cluster_name" {
  value       = aws_ecs_cluster.this.name
  description = "ECS cluster name"
}

output "ecs_service_name" {
  value       = aws_ecs_service.app.name
  description = "ECS service name"
}
