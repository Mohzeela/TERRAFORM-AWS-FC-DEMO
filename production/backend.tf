terraform {
    backend "s3" {
        bucket = "terraform-fc-state-demo"
        key    = "fc-demo/terraform/remote/terraform.tfstate"
        region     = "us-east-1"
    }
}