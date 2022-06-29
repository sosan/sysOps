# GITHUB VARS
variable "keep-secrets-kubernetes-digital-ocean-access-token-github" {
  type = string
}

#### DIGITAL OCEAN VARS ####
#Kubernetes
variable "keep-secrets-kubernetes-cluster-name" {
  type = string
  default = "keep-secrets"
}

variable "keep-secrets-kubernetes-version" {
  type = string
  default = "1.22.8-do.1"
}

variable "keep-secrets-kubernetes-node-pool-name" {
  type = string
  default = "keep-secrets-nodes"
}

variable "keep-secrets-kubernetes-node-pool-size" {
  type = string
  default = "s-1vcpu-2gb"
}

variable "keep-secrets-container-registry-name" {
  type = string
  default = "keep-secrets-registry"
}

variable "keep-secrets-container-registry-type" {
  type = string
  default = "starter"
}

variable "keep-secrets-vpc-name" {
  type = string
  default = "keep-secrets-vpc"
}

variable "region" {
  type = string
  default = "ams3"
}
