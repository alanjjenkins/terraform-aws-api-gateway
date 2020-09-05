output "rest_api_id" {
  value = aws_api_gateway_rest_api.rest_api.id
}

output "rest_api_root_resource_id" {
  value = aws_api_gateway_rest_api.rest_api.root_resource_id
}

output "domain_name" {
  value = aws_api_gateway_domain_name.domain.domain_name
}

output "cloudfront_domain_name" {
  value = aws_api_gateway_domain_name.domain.cloudfront_domain_name
}

output "cloudfront_zone_id" {
  value = aws_api_gateway_domain_name.domain.cloudfront_zone_id
}
