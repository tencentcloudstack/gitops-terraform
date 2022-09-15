terraform {
    required_providers {
        tencentcloud = {
            source = "tencentcloudstack/tencentcloud"
            version = "1.77.8"
        }
    }
    backend "cos" {
      region = "ap-guangzhou"
      bucket = "keep-gitops-dev-1308919341"
      prefix = "terraform/state"
    }
}

provider "tencentcloud" {
    region="ap-guangzhou"
}
