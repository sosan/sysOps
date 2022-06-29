resource "local_file" "kubernetes-config" {
  content = "${digitalocean_kubernetes_cluster.keep-secrets-kubernetes.kube_config.0.raw_config}"
  filename = "kubeconfig.yaml"
}

resource "local_file" "kubernetes-cluster-name" {
  content = var.keep-secrets-kubernetes-cluster-name
  filename = "kubernetesClusterName.txt"
}

resource "local_file" "container-registry" {
  content = "${digitalocean_container_registry.keep-secrets-registry.endpoint}"
  filename = "registry.txt"
}
