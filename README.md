# terraform-aws-api-gateway

Sets up the API gateway with a domain name mapped to it.

## Features

* Creates an API gateway, path mapping and maps a domain name to it.

```js
module "my_api" {
  source              = "github.com/alanjjenkins/terraform-aws-api-gateway?ref=v0.0.1"
  api_name            = "my_api"
  api_description     = "API for something."
  stage_name          = "var.envtype
  domain_name         = "api.my-domain-here.com"
  base_path           = var.envtype == "prod" ? "" : var.envtype
  acm_certificate_arn = data.aws_acm_certificate.my-domain-here-api.arn
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| api_name | The name for the REST API. | string | `` | yes |
| api_description | A description for your API. | string | `` | yes |
| stage_name | The name for the stage that is created. | string | `` | yes |
| domain_name | The domain name to map to the API. | string | `` | yes |
| base_path | The base path of the API. Set this to an empty string to map the API to the base. | string | `` | yes |
| acm_certificate_arn | The ARN of the Amazon Certificate Manager SSL certificate for the API's domain. | string | `` | yes |