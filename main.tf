resource "aws_s3_object" "landing_zone" {
  bucket       = var.bucket_name
  key          = "${var.execution_name}/Landing-zone"
  content      = var.landing_zone
  content_type = "text/plain; charset=utf-8"

  tags = merge(
    local.common_tags,
    var.extra_tags,
    tomap({ Name = "${var.env}-${var.project}-${var.name}-landing-zone" })
  )
}

resource "aws_s3_object" "hello_world" {
  bucket       = var.bucket_name
  key          = "${var.execution_name}/cf-account-mgmt/hello-world.py"
  content      = <<-PYTHON
    def lambda_handler(event, context):
        return {
            "statusCode": 200,
            "headers": {"Content-Type": "application/json"},
            "body": "{\"message\": \"Hello, World!\"}",
        }
  PYTHON
  content_type = "text/x-python; charset=utf-8"

  tags = merge(
    local.common_tags,
    var.extra_tags,
    tomap({ Name = "${var.env}-${var.project}-${var.name}-hello-world" })
  )
}
