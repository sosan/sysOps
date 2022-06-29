resource "github_actions_organization_secret" "cluster-name" {
  secret_name             = "CLUSTER_NAME"
  visibility              = "all"
  plaintext_value         = var.keep-secrets-kubernetes-cluster-name
}

resource "github_actions_organization_secret" "digital-ocean-access-token" {
  secret_name             = "DIGITALOCEAN_ACCESS_TOKEN"
  visibility              = "all"
  plaintext_value         = var.keep-secrets-kubernetes-cluster-name
}

resource "github_actions_organization_secret" "kube-config" {
  secret_name             = "KUBE_CONFIG"
  visibility              = "all"
  encrypted_value         = base64encode("${digitalocean_kubernetes_cluster.keep-secrets-kubernetes.kube_config.0.raw_config}")
}

resource "github_actions_organization_secret" "registry-uri" {
  secret_name             = "REGISTRY_URI"
  visibility              = "all"
  plaintext_value         = "${digitalocean_container_registry.keep-secrets-registry.endpoint}"
} 