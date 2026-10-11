resource "oci_ocvp_sddc" "ocvp_sddcs" {
  for_each = var.ocvp_sddcs

  compartment_id                        = each.value.compartment_id
  ssh_authorized_keys                   = each.value.ssh_authorized_keys
  vmware_software_version               = each.value.vmware_software_version
  capacity_reservation_id               = each.value.capacity_reservation_id
  compute_availability_domain           = each.value.compute_availability_domain
  defined_tags                          = each.value.defined_tags
  display_name                          = each.value.display_name
  esxi_hosts_count                      = each.value.esxi_hosts_count
  esxi_software_version                 = each.value.esxi_software_version
  freeform_tags                         = each.value.freeform_tags
  hcx_action                            = each.value.hcx_action
  hcx_vlan_id                           = each.value.hcx_vlan_id
  initial_host_ocpu_count               = each.value.initial_host_ocpu_count
  initial_host_shape_name               = each.value.initial_host_shape_name
  initial_sku                           = each.value.initial_sku
  instance_display_name_prefix          = each.value.instance_display_name_prefix
  is_hcx_enabled                        = each.value.is_hcx_enabled
  is_shielded_instance_enabled          = each.value.is_shielded_instance_enabled
  is_single_host_sddc                   = each.value.is_single_host_sddc
  nsx_edge_uplink1vlan_id               = each.value.nsx_edge_uplink1vlan_id
  nsx_edge_uplink2vlan_id               = each.value.nsx_edge_uplink2vlan_id
  nsx_edge_vtep_vlan_id                 = each.value.nsx_edge_vtep_vlan_id
  nsx_vtep_vlan_id                      = each.value.nsx_vtep_vlan_id
  provisioning_subnet_id                = each.value.provisioning_subnet_id
  provisioning_vlan_id                  = each.value.provisioning_vlan_id
  refresh_hcx_license_status            = each.value.refresh_hcx_license_status
  replication_vlan_id                   = each.value.replication_vlan_id
  reserving_hcx_on_premise_license_keys = each.value.reserving_hcx_on_premise_license_keys
  vmotion_vlan_id                       = each.value.vmotion_vlan_id
  vsan_vlan_id                          = each.value.vsan_vlan_id
  vsphere_vlan_id                       = each.value.vsphere_vlan_id
  workload_network_cidr                 = each.value.workload_network_cidr

  dynamic "datastores" {
    for_each = each.value.datastores != null ? each.value.datastores : []
    content {
      block_volume_ids = datastores.value.block_volume_ids
      datastore_type   = datastores.value.datastore_type
    }
  }

  dynamic "initial_configuration" {
    for_each = each.value.initial_configuration != null ? each.value.initial_configuration : []
    content {
      dynamic "initial_cluster_configurations" {
        for_each = initial_configuration.value.initial_cluster_configurations
        content {
          capacity_reservation_id = initial_cluster_configurations.value.capacity_reservation_id
          dynamic "cluster_byol_allocation_details" {
            for_each = initial_cluster_configurations.value.cluster_byol_allocation_details != null ? [initial_cluster_configurations.value.cluster_byol_allocation_details] : []
            content {
              firewall_byol_allocation_id = cluster_byol_allocation_details.value.firewall_byol_allocation_id
              vsan_byol_allocation_id     = cluster_byol_allocation_details.value.vsan_byol_allocation_id
            }
          }
          compute_availability_domain = initial_cluster_configurations.value.compute_availability_domain
          datastore_cluster_ids       = initial_cluster_configurations.value.datastore_cluster_ids
          dynamic "datastores" {
            for_each = initial_cluster_configurations.value.datastores != null ? initial_cluster_configurations.value.datastores : []
            content {
              block_volume_ids = datastores.value.block_volume_ids
              datastore_type   = datastores.value.datastore_type
            }
          }
          display_name                           = initial_cluster_configurations.value.display_name
          esxi_hosts_count                       = initial_cluster_configurations.value.esxi_hosts_count
          initial_commitment                     = initial_cluster_configurations.value.initial_commitment
          initial_fault_domain_host_distribution = initial_cluster_configurations.value.initial_fault_domain_host_distribution
          initial_host_ocpu_count                = initial_cluster_configurations.value.initial_host_ocpu_count
          initial_host_shape_name                = initial_cluster_configurations.value.initial_host_shape_name
          initial_vcf_byol_allocation_id         = initial_cluster_configurations.value.initial_vcf_byol_allocation_id
          instance_display_name_prefix           = initial_cluster_configurations.value.instance_display_name_prefix
          is_shielded_instance_enabled           = initial_cluster_configurations.value.is_shielded_instance_enabled
          dynamic "network_configuration" {
            for_each = initial_cluster_configurations.value.network_configuration != null ? [initial_cluster_configurations.value.network_configuration] : []
            content {
              hcx_vlan_id             = network_configuration.value.hcx_vlan_id
              nsx_edge_uplink1vlan_id = network_configuration.value.nsx_edge_uplink1vlan_id
              nsx_edge_uplink2vlan_id = network_configuration.value.nsx_edge_uplink2vlan_id
              nsx_edge_vtep_vlan_id   = network_configuration.value.nsx_edge_vtep_vlan_id
              nsx_vtep_vlan_id        = network_configuration.value.nsx_vtep_vlan_id
              provisioning_subnet_id  = network_configuration.value.provisioning_subnet_id
              provisioning_vlan_id    = network_configuration.value.provisioning_vlan_id
              replication_vlan_id     = network_configuration.value.replication_vlan_id
              vmotion_vlan_id         = network_configuration.value.vmotion_vlan_id
              vsan_vlan_id            = network_configuration.value.vsan_vlan_id
              vsphere_vlan_id         = network_configuration.value.vsphere_vlan_id
            }
          }
          vsphere_type          = initial_cluster_configurations.value.vsphere_type
          workload_network_cidr = initial_cluster_configurations.value.workload_network_cidr
        }
      }
    }
  }

  dynamic "sddc_byol_allocation_details" {
    for_each = each.value.sddc_byol_allocation_details != null ? [each.value.sddc_byol_allocation_details] : []
    content {
      load_balancer_byol_allocation_id = sddc_byol_allocation_details.value.load_balancer_byol_allocation_id
      load_balancer_instance_count     = sddc_byol_allocation_details.value.load_balancer_instance_count
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

