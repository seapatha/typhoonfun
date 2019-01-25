resource "aws_ecr_repository" "aws-tempest" {
  provider = "aws.default"
  name = "${var.cluster_name}"
}

output "registry_url" {
  value = "${aws_ecr_repository.aws-tempest.repository_url}"
}
