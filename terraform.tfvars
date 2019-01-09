/* If you leave the following untouched please let me know so I can have your stuff for free. */
ssh_authorized_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDrHMCPBSgimxzV4b33gSxguxKEAHVZKjAhVMI+GGO6W0xMd45YeFc06wa+B9BtytqSPFx6H/vu6R2ULHpDp9sGjIjcN0TXUmomst0syp+RzDBGPQs4K1c3I9NQcCUrT4f6KGQqQBcp79xQ68FSNN1ZUXUC/MB+mJ6PCsTdH53XCslXdL1hkvxu47GreWMzOho4SInPx6x2OyAHuMAKQV/Q+HMYmtp6qZdCcTojYQdO6cmpm5fRfaJdWC4cXzcv0a3AprkvHWs/LwXgzmo6WTLPP3TBTIGTCkV+ffoNrJCzdhGSA5K8JzEEWEf9XNsw126tol7H0qhcKQxeQ+rYu4TL sean@MacbookPrps-MacBook-Pro.local"
region = "us-west-2"
worker_count = 2
worker_type = "t2.micro"
shared_credentials_file="/home/sean/.aws/credentials"
cluster_name = "typhoonfun"
/* You can get your existing Route 53 managed zones and their IDs by running `aws route53 list-hosted-zones` */
dns_zone = "columnaf.com"
dns_zone_private_id = "Z15YUHIEK05DG3"
