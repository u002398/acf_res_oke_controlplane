variable "region" {
  type        = string
  description = "OCI Region"
}

variable "cluster_compartment_ocid" {
  type        = string
  description = "Compartment OCID where the control plane is placed"
}

variable "cluster_vcn_ocid" {
  type        = string
  description = "Cluster VCN OCID"
}

variable "cluster_subnet_ocid" {
  type        = string
  description = "Cluster Subnet OCID"
}

variable "loadbalancer_subnet_ocid" {
  type        = string
  description = "Load Balancer Subnet OCID"
}

variable "cluster_name" {
  type        = string
  description = "Cluster Name"
}

