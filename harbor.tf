resource "helm_release" "harbor" {
  name = "harbor"

  repository       = "https://helm.goharbor.io"
  chart            = "harbor/harbor"
  namespace        = "harbor"
  create_namespace = true

  values = [file("values/harbor.yaml")]

  depends_on = [kind_cluster.default]
}