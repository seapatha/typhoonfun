module "aws-tempest" {
  source = "git::https://github.com/poseidon/typhoon//aws/container-linux/kubernetes?ref=v1.13.1"

  providers = {
    aws = "aws.default"
    local = "local.default"
    null = "null.default"
    template = "template.default"
    tls = "tls.default"
  }

  # AWS
  cluster_name = "${var.cluster_name}"
  dns_zone     = "${var.dns_zone}"
  dns_zone_id  = "${var.dns_zone_private_id}"

  # configuration
  ssh_authorized_key = "${var.ssh_authorized_key}"
  asset_dir          = "clusters/${var.cluster_name}"

  # optional
  worker_count = "${var.worker_count}"
  worker_type  = "${var.worker_type}"
}
