# Terraform AWS Port Vending S3 Objects

This reusable child module writes account-vending artifacts to an existing S3
bucket. It does not create or configure the bucket, AWS provider, or Terraform
backend.

The module creates exactly these objects under the supplied execution prefix:

- `<execution_name>/Landing-zone`
- `<execution_name>/cf-account-mgmt/hello-world.py`

The `Landing-zone` object uses the caller-provided `landing_zone` text. The
Python object contains a minimal Lambda-compatible handler that returns an HTTP
200 response.

Configure the AWS provider and backend in the consuming root module.
