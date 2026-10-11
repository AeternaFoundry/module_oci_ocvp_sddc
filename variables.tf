variable "ocvp_sddcs" {
  description = <<EOT
Map of ocvp_sddcs, attributes below
Required:
    - compartment_id
    - ssh_authorized_keys
    - vmware_software_version
Optional:
    - capacity_reservation_id
    - compute_availability_domain
    - defined_tags
    - display_name
    - esxi_hosts_count
    - esxi_software_version
    - freeform_tags
    - hcx_action
    - hcx_vlan_id
    - initial_host_ocpu_count
    - initial_host_shape_name
    - initial_sku
    - instance_display_name_prefix
    - is_hcx_enabled
    - is_shielded_instance_enabled
    - is_single_host_sddc
    - nsx_edge_uplink1vlan_id
    - nsx_edge_uplink2vlan_id
    - nsx_edge_vtep_vlan_id
    - nsx_vtep_vlan_id
    - provisioning_subnet_id
    - provisioning_vlan_id
    - refresh_hcx_license_status
    - replication_vlan_id
    - reserving_hcx_on_premise_license_keys
    - vmotion_vlan_id
    - vsan_vlan_id
    - vsphere_vlan_id
    - workload_network_cidr
    - datastores (block):
        - block_volume_ids (required)
        - datastore_type (required)
    - initial_configuration (block):
        - initial_cluster_configurations (required, block):
            - capacity_reservation_id (optional)
            - cluster_byol_allocation_details (optional, block):
                - firewall_byol_allocation_id (optional)
                - vsan_byol_allocation_id (optional)
            - compute_availability_domain (required)
            - datastore_cluster_ids (optional)
            - datastores (optional, block):
                - block_volume_ids (required)
                - datastore_type (required)
            - display_name (optional)
            - esxi_hosts_count (required)
            - initial_commitment (optional)
            - initial_fault_domain_host_distribution (optional)
            - initial_host_ocpu_count (optional)
            - initial_host_shape_name (optional)
            - initial_vcf_byol_allocation_id (optional)
            - instance_display_name_prefix (optional)
            - is_shielded_instance_enabled (optional)
            - network_configuration (optional, block):
                - hcx_vlan_id (optional)
                - nsx_edge_uplink1vlan_id (optional)
                - nsx_edge_uplink2vlan_id (optional)
                - nsx_edge_vtep_vlan_id (required)
                - nsx_vtep_vlan_id (required)
                - provisioning_subnet_id (required)
                - provisioning_vlan_id (optional)
                - replication_vlan_id (optional)
                - vmotion_vlan_id (required)
                - vsan_vlan_id (required)
                - vsphere_vlan_id (optional)
            - vsphere_type (required)
            - workload_network_cidr (optional)
    - sddc_byol_allocation_details (block):
        - load_balancer_byol_allocation_id (optional)
        - load_balancer_instance_count (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                        = string
    ssh_authorized_keys                   = string
    vmware_software_version               = string
    capacity_reservation_id               = optional(string)
    compute_availability_domain           = optional(string)
    defined_tags                          = optional(map(string))
    display_name                          = optional(string)
    esxi_hosts_count                      = optional(number)
    esxi_software_version                 = optional(string)
    freeform_tags                         = optional(map(string))
    hcx_action                            = optional(string)
    hcx_vlan_id                           = optional(string)
    initial_host_ocpu_count               = optional(number)
    initial_host_shape_name               = optional(string)
    initial_sku                           = optional(string)
    instance_display_name_prefix          = optional(string)
    is_hcx_enabled                        = optional(bool)
    is_shielded_instance_enabled          = optional(bool)
    is_single_host_sddc                   = optional(bool)
    nsx_edge_uplink1vlan_id               = optional(string)
    nsx_edge_uplink2vlan_id               = optional(string)
    nsx_edge_vtep_vlan_id                 = optional(string)
    nsx_vtep_vlan_id                      = optional(string)
    provisioning_subnet_id                = optional(string)
    provisioning_vlan_id                  = optional(string)
    refresh_hcx_license_status            = optional(bool)
    replication_vlan_id                   = optional(string)
    reserving_hcx_on_premise_license_keys = optional(list(string))
    vmotion_vlan_id                       = optional(string)
    vsan_vlan_id                          = optional(string)
    vsphere_vlan_id                       = optional(string)
    workload_network_cidr                 = optional(string)
    datastores = optional(list(object({
      block_volume_ids = list(string)
      datastore_type   = string
    })))
    initial_configuration = optional(list(object({
      initial_cluster_configurations = list(object({
        capacity_reservation_id = optional(string)
        cluster_byol_allocation_details = optional(object({
          firewall_byol_allocation_id = optional(string)
          vsan_byol_allocation_id     = optional(string)
        }))
        compute_availability_domain = string
        datastore_cluster_ids       = optional(list(string))
        datastores = optional(list(object({
          block_volume_ids = list(string)
          datastore_type   = string
        })))
        display_name                           = optional(string)
        esxi_hosts_count                       = number
        initial_commitment                     = optional(string)
        initial_fault_domain_host_distribution = optional(string)
        initial_host_ocpu_count                = optional(number)
        initial_host_shape_name                = optional(string)
        initial_vcf_byol_allocation_id         = optional(string)
        instance_display_name_prefix           = optional(string)
        is_shielded_instance_enabled           = optional(bool)
        network_configuration = optional(object({
          hcx_vlan_id             = optional(string)
          nsx_edge_uplink1vlan_id = optional(string)
          nsx_edge_uplink2vlan_id = optional(string)
          nsx_edge_vtep_vlan_id   = string
          nsx_vtep_vlan_id        = string
          provisioning_subnet_id  = string
          provisioning_vlan_id    = optional(string)
          replication_vlan_id     = optional(string)
          vmotion_vlan_id         = string
          vsan_vlan_id            = string
          vsphere_vlan_id         = optional(string)
        }))
        vsphere_type          = string
        workload_network_cidr = optional(string)
      }))
    })))
    sddc_byol_allocation_details = optional(object({
      load_balancer_byol_allocation_id = optional(string)
      load_balancer_instance_count     = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ocvp_sddcs : (
        v.initial_configuration == null || alltrue([for item in v.initial_configuration : (length(item.initial_cluster_configurations) >= 1)])
      )
    ])
    error_message = "Each initial_cluster_configurations list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ocvp_sddcs : (
        v.hcx_action == null || (contains([for v in ["UPGRADE", "DOWNGRADE", "CANCEL_DOWNGRADE"] : lower(v)], lower(v.hcx_action)))
      )
    ])
    error_message = "must be one of: \"UPGRADE\", \"DOWNGRADE\", \"CANCEL_DOWNGRADE\""
  }
}

