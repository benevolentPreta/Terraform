terraform {
    backend "s3" {
        bucket = "b1gboi-backend"
	key = "test6"
        region = "us-east-1"

    }
}
