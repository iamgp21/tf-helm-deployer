variable "argo_cd" {
    type = map(object({
        name             = string
        repository       = string
        chart            = string
        namespace        = string
        create_namespace = bool
        version          = string
        replace = bool
        force_update = bool
        upgrade_install = bool
    }))
  
}
variable "argocd_admin_password" {
  type        = string
  description = "The admin password for ArgoCD"
  sensitive = true
}

variable "values" {
  type        = list(string)
  description = "List of values files for the Helm release"
  sensitive   = false
  
}