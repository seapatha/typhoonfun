resource "aws_ecr_repository" "aws-tempest" {
  provider = "aws.default"
  name = "${var.cluster_name}"
}

resource "aws_ecr_repository_policy" "aws-tempest-ecr-policy" {
  provider = "aws.default"
  repository = "${aws_ecr_repository.aws-tempest.name}"

  policy = <<EOF
{
    "Version": "2019-01-25",
    "Statement": [
        {
            "Sid": "new policy",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "ecr:GetDownloadUrlForLayer",
                "ecr:BatchGetImage",
                "ecr:BatchCheckLayerAvailability",
                "ecr:PutImage",
                "ecr:InitiateLayerUpload",
                "ecr:UploadLayerPart",
                "ecr:CompleteLayerUpload",
                "ecr:DescribeRepositories",
                "ecr:GetRepositoryPolicy",
                "ecr:ListImages",
                "ecr:DeleteRepository",
                "ecr:BatchDeleteImage",
                "ecr:SetRepositoryPolicy",
                "ecr:DeleteRepositoryPolicy"
            ]
        }
    ]
}
EOF
}

output "registry_url" {
  value = "${aws_ecr_repository.aws-tempest.repository_url}"
}
