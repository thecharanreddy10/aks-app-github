output "aks_cluster_name" {
  description = "AKS cluster name."
  value       = azurerm_kubernetes_cluster.aks_oldapp_cluster_2.name
}

output "resource_group_name" {
  description = "Resource group used by the AKS cluster."
  value       = data.azurerm_resource_group.existing.name
}

output "kubernetes_version" {
  description = "Kubernetes version deployed on the cluster."
  value       = azurerm_kubernetes_cluster.aks_oldapp_cluster_2.kubernetes_version
}

output "aks_cluster_id" {
  description = "Resource ID of the AKS cluster."
  value       = azurerm_kubernetes_cluster.aks_oldapp_cluster_2.id
}

output "kube_config_host" {
  description = "AKS kubeconfig host endpoint."
  value       = azurerm_kubernetes_cluster.aks_oldapp_cluster_2.kube_config[0].host
  sensitive   = true
}

output "get_credentials_command" {
  description = "Command to get kubeconfig credentials for the cluster."
  value       = "az aks get-credentials --resource-group ${data.azurerm_resource_group.existing.name} --name ${azurerm_kubernetes_cluster.aks_oldapp_cluster_2.name} --overwrite-existing"
}
