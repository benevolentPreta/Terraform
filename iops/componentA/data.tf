data "terraform_remote_state" "componentB" {
    backend = "s3"
    config = {    
        bucket = "b1gboi-backend"
        key = "test7B"
        region = var.region
    }
}
    
