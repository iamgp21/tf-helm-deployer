resource "helm_release" "argo_cd" {
  for_each = var.argo_cd
  name             = each.value.name
  repository       = each.value.repository
  chart            = each.value.chart
  namespace        = each.value.namespace
  create_namespace = each.value.create_namespace
  version          = each.value.version
  replace          = each.value.replace
  force_update     = each.value.force_update
  upgrade_install  = each.value.upgrade_install
  values           = var.values
  set {
    name  = "configs.secret.argocdServerAdminPassword"
    value = var.argocd_admin_password
  } 
}