resource "aws_cognito_user_pool" "user_group" {
  name = "user_group"

  password_policy {
    temporary_password_validity_days = 30
    minimum_length                   = 11
    require_uppercase                = false
    require_symbols                  = false
    require_numbers                  = false
  }
}

resource "aws_cognito_user_pool_client" "client" {
  name = "client"

  user_pool_id = aws_cognito_user_pool.user_group.id

  generate_secret     = false
  explicit_auth_flows = ["ALLOW_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
}

resource "aws_cognito_user" "first_user" {
  user_pool_id = aws_cognito_user_pool.user_group.id
  username     = "48493714852"
  password     = "48493714852"

  attributes = {
    email          = "leonardock9@gmail.com"
    email_verified = true
  }
}