terraform {
    required_providers {
        tencentcloud = {
            source = "tencentcloudstack/tencentcloud"
            version = "1.77.8"
        }
    }
}

provider "tencentcloud" {
    region="ap-guangzhou"
}
