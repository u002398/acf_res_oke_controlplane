resource "oci_containerengine_cluster" "this" {
  name               = var.cluster_name
  compartment_id     = var.compartment_ocid
  vcn_id             = var.cluster_vcn_ocid
  kubernetes_version = "v1.27.2"

  cluster_pod_network_options {
    cni_type = "OCI_VCN_IP_NATIVE"
  }

  endpoint_config {
    is_public_ip_enabled = false
    subnet_id            = var.cluster_subnet_ocid
  }

  options {
    add_ons {
      is_kubernetes_dashboard_enabled = true
      is_tiller_enabled               = false
    }
    admission_controller_options {
      is_pod_security_policy_enabled = false
    }
    kubernetes_network_config {
      services_cidr = "172.30.0.0/16"
    }
    service_lb_subnet_ids = [var.loadbalancer_subnet_ocid]
  }

  type = "BASIC_CLUSTER"
}

