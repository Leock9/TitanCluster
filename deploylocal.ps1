# Initialize Terraform
Write-Host "Initializing Terraform..."
terraform init

# Validate Terraform configuration
Write-Host "Validating Terraform configuration..."
terraform validate

# Plan Terraform configuration
Write-Host "Planning Terraform configuration..."
terraform plan -out "tfplan"

# Apply Terraform configuration
Write-Host "Applying Terraform configuration..."
terraform apply -auto-approve

# Check if Terraform deployment was successful
if ($LASTEXITCODE -eq 0) {
    Write-Host "Terraform deployment successful!"
    exit 0
} else {
    Write-Host "Terraform deployment failed!"
    exit 1
}