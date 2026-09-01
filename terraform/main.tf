data "azurerm_resource_group" "existing" {
  name = "AKS_Upgrade_Agent"
}

resource "azurerm_kubernetes_cluster" "aks_oldapp_cluster_2" {
  name                = "AKS-oldapp-cluster-2"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.existing.name
  dns_prefix          = "aks-oldapp-cluster-2"
  kubernetes_version  = var.kubernetes_version

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "nodepool1"
    vm_size    = var.vm_size
    node_count = 2
  }

  tags = {
    environment = "poc"
    purpose     = "aks-upgrade"
  }
}
