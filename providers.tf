provider "aws" {
  version = "~> 1.13.0"
  alias   = "default"

  region                  = "${var.region}"
  shared_credentials_file = "${var.shared_credentials_file}" 
}

provider "ct" {
  version = "0.3.0"
}

provider "local" {
  version = "~> 1.0"
  alias = "default"
}

provider "null" {
  version = "~> 1.0"
  alias = "default"
}

provider "template" {
  version = "~> 1.0"
  alias = "default"
}

provider "tls" {
  version = "~> 1.0"
  alias = "default"
}
