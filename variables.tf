variable "net_name" {
    description = "Name of the network(s) created, can be a list of strings"
    type       = list(string)
}

variable "ip_range" {
    description = "IP ranges of the network(s) created, can be a list of strings (e.g, 10.0.0.0/16)"
    type       = list(string)
}

variable "subnet_ip_range" {
    description = "Subnet IP ranges of the network(s) created, can be a list of strings (e.g, 10.0.0.0/24)"
    type       = list(string)
}

variable "net_zone" {
    description = "Network zone (eu-central, us-east or us-west)"
    type       = string
}