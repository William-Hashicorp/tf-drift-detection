 terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "William-Hashicorp"
    workspaces {
      name = "tf-drift-detection"
            }
  }
} 

