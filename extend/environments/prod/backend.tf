terraform {
    backend "s3" {
        bucket = "b1gboi-backend"
 key = "prod"
        region = "us-east-1"
    }
}
