resource "aws_api_gateway_rest_api" "rest_api" {
  name        = "${var.api_name}"
  description = "${var.api_description}"
}

resource "aws_api_gateway_base_path_mapping" "path_mapping" {
  api_id      = "${aws_api_gateway_rest_api.rest_api.id}"
  stage_name  = "${var.stage_name}"
  domain_name = "${var.domain_name}"
  base_path   = "${var.base_path}"
}

resource "aws_api_gateway_domain_name" "domain" {
  domain_name     = "${var.domain_name}"
  certificate_arn = "${var.acm_certificate_arn}"
}

