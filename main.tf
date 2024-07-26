resource "hcloud_network" "private-network" {
    count           = length(var.net_name)
    name            = var.net_name[count.index]
    ip_range        = var.ip_range[count.index]
}

resource "hcloud_network_subnet" "network-subnet" {
    count           = length(var.net_name)
    type            = "cloud"
    network_id      = hcloud_network.private-network[count.index].id
    network_zone    = var.net_zone
    ip_range        = var.subnet_ip_range[count.index]
}