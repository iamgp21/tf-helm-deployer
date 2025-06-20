module "argocd" {
  source = "./modules/argocd"
  argo_cd = var.argo_cd
  argocd_admin_password = var.argocd_admin_password
  values = [ file("${path.root}/helm-values/wsl2/argocd.yaml") ] 

}