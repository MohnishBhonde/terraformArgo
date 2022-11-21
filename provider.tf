

provider "kubernetes" {

    config_path = "~/.kube/config"
  
}
provider "aws"{
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region = var.aws_region
}