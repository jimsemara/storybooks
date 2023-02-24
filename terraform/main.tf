terraform {
  backend "gcs" {
    bucket = "devops-storybooks-377209-terraform"
    prefix = "/state/storybooks"
  }
}