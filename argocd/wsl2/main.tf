module "argocd" {
  source = "./modules/argocd"
  argo_cd = var.argo_cd
  argocd_admin_password = var.argocd_admin_password
  values = var.values

}