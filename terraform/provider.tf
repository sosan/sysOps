variable "keep_secrets_digitalocean_token" {}
variable "keep_secrets_token_github" {}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "digitalocean" {
  token = "${var.keep_secrets_digitalocean_token}"
}

provider "github" {
  token = "${var.keep_secrets_token_github}"
}
