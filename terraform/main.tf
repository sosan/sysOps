resource "digitalocean_vpc" "keep-secrets-vpc" {
  name     = var.keep-secrets-vpc-name
  region   = var.region
}

resource "digitalocean_kubernetes_cluster" "keep-secrets-kubernetes" {
  name      = var.keep-secrets-kubernetes-cluster-name
  region    = var.region
  version   = var.keep-secrets-kubernetes-version
  vpc_uuid  = digitalocean_vpc.keep-secrets-vpc.id

  node_pool {
    name       = var.keep-secrets-kubernetes-node-pool-name
    size       = var.keep-secrets-kubernetes-node-pool-size
    node_count = var.keep-secrets-kubernetes-node-pool-count
  }
}

resource "digitalocean_container_registry" "keep-secrets-registry" {
  name                   = var.keep-secrets-container-registry-name
  subscription_tier_slug = var.keep-secrets-container-registry-type
  region                 = var.region
}

resource "digitalocean_database_cluster" "keep-secrets-mongodb" {
  name       = var.keep-secrets-mongodb-name
  engine     = "mongodb"
  version    = "4"
  size       = "db-s-1vcpu-1gb"
  region     = var.region
  node_count = 1
  private_network_uuid = digitalocean_vpc.keep-secrets-vpc.id
}

