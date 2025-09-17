terraform {
  backend "s3" {
    bucket = "erebe-tf-test"
    key    = "path/to/my/key"
    region = "eu-west-3"
    use_lockfile = true
  }
}

