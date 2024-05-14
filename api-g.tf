locals {
  load_balancer_dns = aws_alb.alb-cluster.dns_name
}

resource "aws_api_gateway_rest_api" "api_gateway" {
    name = "GT-${var.projectName}"
    depends_on  = [aws_alb.alb-cluster]

    endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_resource" "get_by_document" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  parent_id   = aws_api_gateway_rest_api.api_gateway.root_resource_id
  path_part   = "GetByDocument"
}

resource "aws_api_gateway_method" "get_by_document" {
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  resource_id   = aws_api_gateway_resource.get_by_document.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "get_by_document" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  resource_id = aws_api_gateway_resource.get_by_document.id
  http_method = aws_api_gateway_method.get_by_document.http_method

  integration_http_method = "ANY"
  type                    = "HTTP"
  uri                     = "http://${local.load_balancer_dns}/client/GetByDocument"
}

resource "aws_api_gateway_resource" "client" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  parent_id   = aws_api_gateway_rest_api.api_gateway.root_resource_id
  path_part   = "client"
}

resource "aws_api_gateway_method" "client" {
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  resource_id   = aws_api_gateway_resource.client.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "client" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  resource_id = aws_api_gateway_resource.client.id
  http_method = aws_api_gateway_method.client.http_method

  integration_http_method = "ANY"
  type                    = "HTTP"
  uri                     = "http://${local.load_balancer_dns}/client"
}

resource "aws_api_gateway_resource" "get_by_category" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  parent_id   = aws_api_gateway_rest_api.api_gateway.root_resource_id
  path_part   = "GetByCategory"
}

resource "aws_api_gateway_method" "get_by_category" {
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  resource_id   = aws_api_gateway_resource.get_by_category.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "get_by_category" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  resource_id = aws_api_gateway_resource.get_by_category.id
  http_method = aws_api_gateway_method.get_by_category.http_method

  integration_http_method = "ANY"
  type                    = "HTTP"
  uri                     = "http://${local.load_balancer_dns}/itemMenu/GetByCategory"
}

resource "aws_api_gateway_resource" "item_menu" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  parent_id   = aws_api_gateway_rest_api.api_gateway.root_resource_id
  path_part   = "itemMenu"
}

resource "aws_api_gateway_method" "item_menu" {
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  resource_id   = aws_api_gateway_resource.item_menu.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "item_menu" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  resource_id = aws_api_gateway_resource.item_menu.id
  http_method = aws_api_gateway_method.item_menu.http_method

  integration_http_method = "ANY"
  type                    = "HTTP"
  uri                     = "http://${local.load_balancer_dns}/itemMenu"
}

resource "aws_api_gateway_resource" "order_get_list" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  parent_id   = aws_api_gateway_rest_api.api_gateway.root_resource_id
  path_part   = "getlist"
}

resource "aws_api_gateway_method" "order_get_list" {
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  resource_id   = aws_api_gateway_resource.order_get_list.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "order_get_list" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  resource_id = aws_api_gateway_resource.order_get_list.id
  http_method = aws_api_gateway_method.order_get_list.http_method

  integration_http_method = "ANY"
  type                    = "HTTP"
  uri                     = "http://${local.load_balancer_dns}/order/getlist"
}

resource "aws_api_gateway_resource" "order_checkout" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  parent_id   = aws_api_gateway_rest_api.api_gateway.root_resource_id
  path_part   = "checkout"
}

resource "aws_api_gateway_method" "order_checkout" {
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  resource_id   = aws_api_gateway_resource.order_checkout.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "order_checkout" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  resource_id = aws_api_gateway_resource.order_checkout.id
  http_method = aws_api_gateway_method.order_checkout.http_method

  integration_http_method = "ANY"
  type                    = "HTTP"
  uri                     = "http://${local.load_balancer_dns}/order/checkout"
}

resource "aws_api_gateway_resource" "order_update_status" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  parent_id   = aws_api_gateway_rest_api.api_gateway.root_resource_id
  path_part   = "UpdateStatus"
}

resource "aws_api_gateway_method" "order_update_status" {
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  resource_id   = aws_api_gateway_resource.order_update_status.id
  http_method   = "PATCH"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "order_update_status" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  resource_id = aws_api_gateway_resource.order_update_status.id
  http_method = aws_api_gateway_method.order_update_status.http_method

  integration_http_method = "ANY"
  type                    = "HTTP"
  uri                     = "http://${local.load_balancer_dns}/order/UpdateStatus"
}

resource "aws_api_gateway_deployment" "deployment" {
  depends_on = [
    aws_api_gateway_integration.get_by_document,
    aws_api_gateway_integration.client,
    aws_api_gateway_integration.get_by_category,
    aws_api_gateway_integration.item_menu,
    aws_api_gateway_integration.order_get_list,
    aws_api_gateway_integration.order_checkout,
    aws_api_gateway_integration.order_update_status
  ]

  rest_api_id = aws_api_gateway_rest_api.api_gateway.id

   lifecycle {
    create_before_destroy = true
  }
}

resource "aws_api_gateway_stage" "stage" {
  deployment_id = aws_api_gateway_deployment.deployment.id
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  stage_name    = "stage"
}

output "url_get_by_document" {
  value = "${aws_api_gateway_deployment.deployment.invoke_url}"
}