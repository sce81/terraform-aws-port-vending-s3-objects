output "landing_zone_object" {
  description = "Details of the Landing-zone S3 object."
  value = {
    bucket = aws_s3_object.landing_zone.bucket
    key    = aws_s3_object.landing_zone.key
    id     = aws_s3_object.landing_zone.id
  }
}

output "hello_world_object" {
  description = "Details of the hello-world Python S3 object."
  value = {
    bucket = aws_s3_object.hello_world.bucket
    key    = aws_s3_object.hello_world.key
    id     = aws_s3_object.hello_world.id
  }
}
