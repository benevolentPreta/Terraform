terraform {
    backend "s3" {
        bucket = "b1gboi-backend"
 key = "dev"
        region = "us-east-1"
    }
}
