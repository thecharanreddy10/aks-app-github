variable "location" {
  description = "Azure region for the AKS cluster."
  type        = string
  default     = "eastus"
}

variable "kubernetes_version" {
  description = "AKS Kubernetes version. Default is pinned to 1.34.10; override with another supported 1.34.x value if needed."
  type        = string
  default     = "1.34.10"
}

variable "vm_size" {
  description = "AKS node VM size for the default node pool."
  type        = string
  default     = "Standard_D2s_v3"
}
