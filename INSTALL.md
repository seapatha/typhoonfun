# TyphoonFun

TyphoonFun helps you orchestrate microservice delivery in cloud Kubernetes clusters from start to finish.

Components Overview
  * AWS orchestration 
  * Terraform and Typhoon and TyphoonFun
    * Terraform orchestrates cloud computing infrastructure
    * Typhoon provisions Kubernetes clusters on cloud computing infrastructure 
    * TyphoonFun bootstraps Typhoon with a scaleable, simple configuration file
  * Kubernetes
    * Execution of the terraform environment provides $KUBECONFIG
    * kubectl can then apply provided kubernetes manifests

## AWS workstation configuration

You need to ensure that you have an `~/.aws/credentials` file that looks like this:
```
[default]
aws_access_key_id = [shorter thing in all caps and numerics]
aws_secret_access_key = [longer thing in mixed case and numerics]
```

This is accomplished through creating a new user in Amazon IAM after you have created your own account.  Automation of this is well beyond the scope of this document.

## Terraform

### Download and install Terraform 
1. Visit https://www.terraform.io/downloads.html
2. Download the relevant binary
3. For MacOS X, move the binary to a directory specified in your $PATH

### Setup the Terraform CoreOS provider plugin
1. Ensure your plugin directory exists by running `mkdir -p ~/.terraform.d/plugins`
2. Install go and run `go get -u github.com/coreos/terraform-provider-ct`
3. Install the plugin with `cp ~/go/bin/terraform-provider-ct ~/.terraform.d/plugins/terraform-provider-ct_v0.3.0`

### Use Terraform and Typhoon to orchestrate your cloud environment
1. `cd` into the terraform directory.
2. Configure the terraform.tfvars file.
3. Ensure that ssh-agent is running with the ssh key you have configured in Step 2.  
4. Execute `terraform init` to download plugins specified in the Terraform configuration.
5. Execute `terraform validate` to ensure the source configuration is correct.
6. Execute `terraform plan` to validate the behavior of the Terraform code.
7. Execute `terraform apply` to commit the Terraform plan to infrastructure. 
8. You may now be charged if your usage exceeds the free tier.  Run `terraform destroy` to destroy everything terraform has done.

## Kubernetes

### Configure kubectl

On OS X systems, kubectl should be installed with brew.  

The `terraform apply` command from above generates a kubeconfig file.  Within the project repo, run:
```
$ TFFROOT=$(git rev-parse --show-toplevel)
$ export KUBECONFIG=${TFFROOT}/terraform/clusters/$(grep cluster_name ${TFFROOT}/terraform/terraform.tfvars |awk '{print $3}' |sed s#\"##g)/auth/kubeconfig
```

### Apply Kubernetes manifests
1. Change into the typhoonfun project directory

