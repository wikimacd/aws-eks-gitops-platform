# ArgoCD Helm release
resource "helm_release" "argocd" {
  provider   = helm.eks  # use the aliased Helm provider for EKS

  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = "argocd"

  create_namespace = true

  # Optional: if you have custom values
  # values = [file("${path.module}/helm-values/argocd-values.yaml")]

  depends_on = [
    module.eks
  ]
}
