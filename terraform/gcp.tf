provider "google" {
  credentials = file("terraform-sa-key.json")
  project     = "devops-storybooks"
  region      = "europe-west3"
  zone        = "europe-west3-c"
  version     = "~> 3.38"
}

# IP ADDRESS

# NETWORK

# FIREWALL RULE

# OS IMAGE

# COMPUTE ENGINE INSTANCE