variable "aws_region" {
  type        = string
  description = "region where EKS is deployed"
}

variable "aws_account_id" {
  type        = string
  description = "Account ID of this environment"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
}

variable "cluster_version" {
  type        = string
  description = "EKS cluster version"
}

variable "vpc_id" {
  type        = string
  description = "VPC id where EKS is going to be deployed"
}

variable "vpc_subnet1_id" {
  type        = string
  description = "Subnet ID of first subnet"
}

variable "vpc_subnet2_id" {
  type        = string
  description = "Subnet ID of second subnet"
}

variable "csr1-cidr-block" {
  type        = string
  description = "VPC first subnet CIDR"
}

variable "csr2-cidr-block" {
  type        = string
  description = "VPC second subnet CIDR"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "EKS cluster Project tags"
}

variable "managed_node_groups" {
  type        = map(object({
    node_group_name = string
    instance_types = list(string)

    min_size     = number
    max_size     = number
    desired_size = number
    disk_size    = number

    additional_tags = map(string)
  }))
  default     = {}
}

variable "platform_teams" {
  type        = map(object({
    users = list(string)
  }))
}

variable "application_teams" {
  type        = map(object({
    users = list(string)
  }))
  default     = {}
  description = "application teams privileges, quotas, etc."
}

variable "crt_secret" {
  type        = string
  description = "Secret ARN for wildcard ssl crt secret, only the part after the last slash"
}

variable "key_secret" {
  type        = string
  description = "Secret ARN for wildcard ssl private key secret, only the part after the last slash"
}

variable "ca_crt_secret" {
  type        = string
  description = "Secret ARN for CA certificate secret, only the part after the last slash"
}

variable "pod_cpu_limit" {
  type        = string
  description = "maximum pod CPU limit"
}

variable "pod_memory_limit" {
  type        = string
  description = "maximum pod RAM limit"
}

variable "pod_cpu_requests" {
  type        = string
  description = "maximum pod CPU requests"
}

variable "pod_memory_requests" {
  type        = string
  description = "maximum pod RAM requests"
}

variable "prometheus_internal_fqdn" {
  type        = string
  description = "Prometheus internal LAN FQDN"
}

variable "prometheus_route53_fqdn" {
  type        = string
  description = "Prometheus Route53 FQDN"
}

variable "loki_gateway_internal_fqdn" {
  type        = string
  description = "Loki Gateway internal LAN FQDN"
}

variable "loki_gateway_route53_fqdn" {
  type        = string
  description = "Loki Gateway Route53 FQDN"
}

variable "loki_bucket" {
  type        = string
  description = "Loki bucket name"
}
