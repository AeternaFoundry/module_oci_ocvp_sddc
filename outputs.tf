output "ocvp_sddcs_id" {
  description = "Map of id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ocvp_sddcs_actual_esxi_hosts_count" {
  description = "Map of actual_esxi_hosts_count values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no actual_esxi_hosts_count are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.actual_esxi_hosts_count if v.actual_esxi_hosts_count != null }
}
output "ocvp_sddcs_capacity_reservation_id" {
  description = "Map of capacity_reservation_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no capacity_reservation_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.capacity_reservation_id if v.capacity_reservation_id != null && length(v.capacity_reservation_id) > 0 }
}
output "ocvp_sddcs_clusters_count" {
  description = "Map of clusters_count values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no clusters_count are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.clusters_count if v.clusters_count != null }
}
output "ocvp_sddcs_compartment_id" {
  description = "Map of compartment_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no compartment_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "ocvp_sddcs_compute_availability_domain" {
  description = "Map of compute_availability_domain values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no compute_availability_domain are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.compute_availability_domain if v.compute_availability_domain != null && length(v.compute_availability_domain) > 0 }
}
output "ocvp_sddcs_datastores" {
  description = "Map of datastores values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no datastores are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.datastores if v.datastores != null && length(v.datastores) > 0 }
}
output "ocvp_sddcs_defined_tags" {
  description = "Map of defined_tags values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "ocvp_sddcs_display_name" {
  description = "Map of display_name values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no display_name are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ocvp_sddcs_esxi_hosts_count" {
  description = "Map of esxi_hosts_count values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no esxi_hosts_count are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.esxi_hosts_count if v.esxi_hosts_count != null }
}
output "ocvp_sddcs_esxi_software_version" {
  description = "Map of esxi_software_version values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no esxi_software_version are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.esxi_software_version if v.esxi_software_version != null && length(v.esxi_software_version) > 0 }
}
output "ocvp_sddcs_freeform_tags" {
  description = "Map of freeform_tags values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "ocvp_sddcs_hcx_action" {
  description = "Map of hcx_action values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no hcx_action are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.hcx_action if v.hcx_action != null && length(v.hcx_action) > 0 }
}
output "ocvp_sddcs_hcx_fqdn" {
  description = "Map of hcx_fqdn values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no hcx_fqdn are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.hcx_fqdn if v.hcx_fqdn != null && length(v.hcx_fqdn) > 0 }
}
output "ocvp_sddcs_hcx_initial_password" {
  description = "Map of hcx_initial_password values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no hcx_initial_password are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.hcx_initial_password if v.hcx_initial_password != null && length(v.hcx_initial_password) > 0 }
}
output "ocvp_sddcs_hcx_mode" {
  description = "Map of hcx_mode values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no hcx_mode are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.hcx_mode if v.hcx_mode != null && length(v.hcx_mode) > 0 }
}
output "ocvp_sddcs_hcx_on_prem_key" {
  description = "Map of hcx_on_prem_key values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no hcx_on_prem_key are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.hcx_on_prem_key if v.hcx_on_prem_key != null && length(v.hcx_on_prem_key) > 0 }
}
output "ocvp_sddcs_hcx_on_prem_licenses" {
  description = "Map of hcx_on_prem_licenses values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no hcx_on_prem_licenses are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.hcx_on_prem_licenses if v.hcx_on_prem_licenses != null && length(v.hcx_on_prem_licenses) > 0 }
}
output "ocvp_sddcs_hcx_private_ip_id" {
  description = "Map of hcx_private_ip_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no hcx_private_ip_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.hcx_private_ip_id if v.hcx_private_ip_id != null && length(v.hcx_private_ip_id) > 0 }
}
output "ocvp_sddcs_hcx_vlan_id" {
  description = "Map of hcx_vlan_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no hcx_vlan_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.hcx_vlan_id if v.hcx_vlan_id != null && length(v.hcx_vlan_id) > 0 }
}
output "ocvp_sddcs_initial_configuration" {
  description = "Map of initial_configuration values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no initial_configuration are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.initial_configuration if v.initial_configuration != null && length(v.initial_configuration) > 0 }
}
output "ocvp_sddcs_initial_host_ocpu_count" {
  description = "Map of initial_host_ocpu_count values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no initial_host_ocpu_count are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.initial_host_ocpu_count if v.initial_host_ocpu_count != null }
}
output "ocvp_sddcs_initial_host_shape_name" {
  description = "Map of initial_host_shape_name values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no initial_host_shape_name are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.initial_host_shape_name if v.initial_host_shape_name != null && length(v.initial_host_shape_name) > 0 }
}
output "ocvp_sddcs_initial_sku" {
  description = "Map of initial_sku values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no initial_sku are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.initial_sku if v.initial_sku != null && length(v.initial_sku) > 0 }
}
output "ocvp_sddcs_instance_display_name_prefix" {
  description = "Map of instance_display_name_prefix values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no instance_display_name_prefix are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.instance_display_name_prefix if v.instance_display_name_prefix != null && length(v.instance_display_name_prefix) > 0 }
}
output "ocvp_sddcs_is_hcx_enabled" {
  description = "Map of is_hcx_enabled values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no is_hcx_enabled are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.is_hcx_enabled if v.is_hcx_enabled != null }
}
output "ocvp_sddcs_is_hcx_enterprise_enabled" {
  description = "Map of is_hcx_enterprise_enabled values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no is_hcx_enterprise_enabled are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.is_hcx_enterprise_enabled if v.is_hcx_enterprise_enabled != null }
}
output "ocvp_sddcs_is_hcx_pending_downgrade" {
  description = "Map of is_hcx_pending_downgrade values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no is_hcx_pending_downgrade are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.is_hcx_pending_downgrade if v.is_hcx_pending_downgrade != null }
}
output "ocvp_sddcs_is_shielded_instance_enabled" {
  description = "Map of is_shielded_instance_enabled values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no is_shielded_instance_enabled are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.is_shielded_instance_enabled if v.is_shielded_instance_enabled != null }
}
output "ocvp_sddcs_is_single_host_sddc" {
  description = "Map of is_single_host_sddc values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no is_single_host_sddc are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.is_single_host_sddc if v.is_single_host_sddc != null }
}
output "ocvp_sddcs_nsx_edge_uplink1vlan_id" {
  description = "Map of nsx_edge_uplink1vlan_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no nsx_edge_uplink1vlan_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.nsx_edge_uplink1vlan_id if v.nsx_edge_uplink1vlan_id != null && length(v.nsx_edge_uplink1vlan_id) > 0 }
}
output "ocvp_sddcs_nsx_edge_uplink2vlan_id" {
  description = "Map of nsx_edge_uplink2vlan_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no nsx_edge_uplink2vlan_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.nsx_edge_uplink2vlan_id if v.nsx_edge_uplink2vlan_id != null && length(v.nsx_edge_uplink2vlan_id) > 0 }
}
output "ocvp_sddcs_nsx_edge_uplink_ip_id" {
  description = "Map of nsx_edge_uplink_ip_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no nsx_edge_uplink_ip_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.nsx_edge_uplink_ip_id if v.nsx_edge_uplink_ip_id != null && length(v.nsx_edge_uplink_ip_id) > 0 }
}
output "ocvp_sddcs_nsx_edge_vtep_vlan_id" {
  description = "Map of nsx_edge_vtep_vlan_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no nsx_edge_vtep_vlan_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.nsx_edge_vtep_vlan_id if v.nsx_edge_vtep_vlan_id != null && length(v.nsx_edge_vtep_vlan_id) > 0 }
}
output "ocvp_sddcs_nsx_manager_fqdn" {
  description = "Map of nsx_manager_fqdn values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no nsx_manager_fqdn are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.nsx_manager_fqdn if v.nsx_manager_fqdn != null && length(v.nsx_manager_fqdn) > 0 }
}
output "ocvp_sddcs_nsx_manager_initial_password" {
  description = "Map of nsx_manager_initial_password values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no nsx_manager_initial_password are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.nsx_manager_initial_password if v.nsx_manager_initial_password != null && length(v.nsx_manager_initial_password) > 0 }
}
output "ocvp_sddcs_nsx_manager_private_ip_id" {
  description = "Map of nsx_manager_private_ip_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no nsx_manager_private_ip_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.nsx_manager_private_ip_id if v.nsx_manager_private_ip_id != null && length(v.nsx_manager_private_ip_id) > 0 }
}
output "ocvp_sddcs_nsx_manager_username" {
  description = "Map of nsx_manager_username values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no nsx_manager_username are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.nsx_manager_username if v.nsx_manager_username != null && length(v.nsx_manager_username) > 0 }
}
output "ocvp_sddcs_nsx_overlay_segment_name" {
  description = "Map of nsx_overlay_segment_name values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no nsx_overlay_segment_name are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.nsx_overlay_segment_name if v.nsx_overlay_segment_name != null && length(v.nsx_overlay_segment_name) > 0 }
}
output "ocvp_sddcs_nsx_vtep_vlan_id" {
  description = "Map of nsx_vtep_vlan_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no nsx_vtep_vlan_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.nsx_vtep_vlan_id if v.nsx_vtep_vlan_id != null && length(v.nsx_vtep_vlan_id) > 0 }
}
output "ocvp_sddcs_provisioning_subnet_id" {
  description = "Map of provisioning_subnet_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no provisioning_subnet_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.provisioning_subnet_id if v.provisioning_subnet_id != null && length(v.provisioning_subnet_id) > 0 }
}
output "ocvp_sddcs_provisioning_vlan_id" {
  description = "Map of provisioning_vlan_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no provisioning_vlan_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.provisioning_vlan_id if v.provisioning_vlan_id != null && length(v.provisioning_vlan_id) > 0 }
}
output "ocvp_sddcs_refresh_hcx_license_status" {
  description = "Map of refresh_hcx_license_status values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no refresh_hcx_license_status are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.refresh_hcx_license_status if v.refresh_hcx_license_status != null }
}
output "ocvp_sddcs_replication_vlan_id" {
  description = "Map of replication_vlan_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no replication_vlan_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.replication_vlan_id if v.replication_vlan_id != null && length(v.replication_vlan_id) > 0 }
}
output "ocvp_sddcs_reserving_hcx_on_premise_license_keys" {
  description = "Map of reserving_hcx_on_premise_license_keys values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no reserving_hcx_on_premise_license_keys are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.reserving_hcx_on_premise_license_keys if v.reserving_hcx_on_premise_license_keys != null && length(v.reserving_hcx_on_premise_license_keys) > 0 }
}
output "ocvp_sddcs_sddc_byol_allocation_details" {
  description = "Map of sddc_byol_allocation_details values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no sddc_byol_allocation_details are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => one(v.sddc_byol_allocation_details) if v.sddc_byol_allocation_details != null && length(v.sddc_byol_allocation_details) > 0 }
}
output "ocvp_sddcs_ssh_authorized_keys" {
  description = "Map of ssh_authorized_keys values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no ssh_authorized_keys are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.ssh_authorized_keys if v.ssh_authorized_keys != null && length(v.ssh_authorized_keys) > 0 }
}
output "ocvp_sddcs_state" {
  description = "Map of state values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no state are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "ocvp_sddcs_system_tags" {
  description = "Map of system_tags values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no system_tags are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "ocvp_sddcs_time_created" {
  description = "Map of time_created values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no time_created are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "ocvp_sddcs_time_hcx_billing_cycle_end" {
  description = "Map of time_hcx_billing_cycle_end values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no time_hcx_billing_cycle_end are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.time_hcx_billing_cycle_end if v.time_hcx_billing_cycle_end != null && length(v.time_hcx_billing_cycle_end) > 0 }
}
output "ocvp_sddcs_time_hcx_license_status_updated" {
  description = "Map of time_hcx_license_status_updated values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no time_hcx_license_status_updated are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.time_hcx_license_status_updated if v.time_hcx_license_status_updated != null && length(v.time_hcx_license_status_updated) > 0 }
}
output "ocvp_sddcs_time_updated" {
  description = "Map of time_updated values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no time_updated are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "ocvp_sddcs_upgrade_licenses" {
  description = "Map of upgrade_licenses values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no upgrade_licenses are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.upgrade_licenses if v.upgrade_licenses != null && length(v.upgrade_licenses) > 0 }
}
output "ocvp_sddcs_vcenter_fqdn" {
  description = "Map of vcenter_fqdn values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no vcenter_fqdn are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.vcenter_fqdn if v.vcenter_fqdn != null && length(v.vcenter_fqdn) > 0 }
}
output "ocvp_sddcs_vcenter_initial_password" {
  description = "Map of vcenter_initial_password values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no vcenter_initial_password are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.vcenter_initial_password if v.vcenter_initial_password != null && length(v.vcenter_initial_password) > 0 }
}
output "ocvp_sddcs_vcenter_private_ip_id" {
  description = "Map of vcenter_private_ip_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no vcenter_private_ip_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.vcenter_private_ip_id if v.vcenter_private_ip_id != null && length(v.vcenter_private_ip_id) > 0 }
}
output "ocvp_sddcs_vcenter_username" {
  description = "Map of vcenter_username values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no vcenter_username are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.vcenter_username if v.vcenter_username != null && length(v.vcenter_username) > 0 }
}
output "ocvp_sddcs_vmotion_vlan_id" {
  description = "Map of vmotion_vlan_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no vmotion_vlan_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.vmotion_vlan_id if v.vmotion_vlan_id != null && length(v.vmotion_vlan_id) > 0 }
}
output "ocvp_sddcs_vmware_software_version" {
  description = "Map of vmware_software_version values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no vmware_software_version are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.vmware_software_version if v.vmware_software_version != null && length(v.vmware_software_version) > 0 }
}
output "ocvp_sddcs_vsan_vlan_id" {
  description = "Map of vsan_vlan_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no vsan_vlan_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.vsan_vlan_id if v.vsan_vlan_id != null && length(v.vsan_vlan_id) > 0 }
}
output "ocvp_sddcs_vsphere_upgrade_guide" {
  description = "Map of vsphere_upgrade_guide values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no vsphere_upgrade_guide are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.vsphere_upgrade_guide if v.vsphere_upgrade_guide != null && length(v.vsphere_upgrade_guide) > 0 }
}
output "ocvp_sddcs_vsphere_upgrade_objects" {
  description = "Map of vsphere_upgrade_objects values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no vsphere_upgrade_objects are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.vsphere_upgrade_objects if v.vsphere_upgrade_objects != null && length(v.vsphere_upgrade_objects) > 0 }
}
output "ocvp_sddcs_vsphere_vlan_id" {
  description = "Map of vsphere_vlan_id values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no vsphere_vlan_id are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.vsphere_vlan_id if v.vsphere_vlan_id != null && length(v.vsphere_vlan_id) > 0 }
}
output "ocvp_sddcs_workload_network_cidr" {
  description = "Map of workload_network_cidr values across all ocvp_sddcs, keyed the same as var.ocvp_sddcs except keys with no workload_network_cidr are omitted"
  value       = { for k, v in oci_ocvp_sddc.ocvp_sddcs : k => v.workload_network_cidr if v.workload_network_cidr != null && length(v.workload_network_cidr) > 0 }
}

