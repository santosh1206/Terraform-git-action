storage_deployments = {
  "deployment-01" = {
    rg_name                 = "rg-data-eastus-01"
    storage_account_name    = "demostdataeastus01"
    region_name             = "eastus"
    disable_public_access   = true
    enable_private_endpoint = true
    subnet_id               = "/subscriptions/1e2eb233-ad82-4d38-bfa4-b4ee44a647a0/resourceGroups/rg-network-demo/providers/Microsoft.Network/virtualNetworks/vnet-eastus/subnets/snet-private-endpoints"
  },
  "deployment-02" = {
    rg_name                 = "rg-logs-eastus2-02"
    storage_account_name    = "demostlogseastus02"
    region_name             = "eastus2"
    disable_public_access   = false
    enable_private_endpoint = false
    subnet_id               = null
  },
  "deployment-03" = {
    rg_name                 = "rg-shared-centralus-03"
    storage_account_name    = "demostsharedcentralus03"
    region_name             = "centralus"
    disable_public_access   = false
    enable_private_endpoint = false
    subnet_id               = null
  }
}