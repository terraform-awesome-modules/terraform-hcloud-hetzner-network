module "private_network" {
    source  = "terraform-awesome-modules/hetzner-network/hcloud"
    version = "0.1.0"

    net_name    = ["private-network1"]
    ip_range    =  ["10.0.0.0/16"]
    subnet_ip_range = ["10.0.0.0/24"]
    net_zone = "eu-central"

}