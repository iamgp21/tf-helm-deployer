argo_cd = {
  "argocd" = {
    name             = "wsl2-argocd"
    repository       = "https://argoproj.github.io/argo-helm"
    chart            = "argo-cd"
    namespace        = "wsl2-argocd"
    create_namespace = true
    version          = "8.0.6"
    replace          = false
    force_update     = false
    upgrade_install  = true
  }
}