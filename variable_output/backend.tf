terraform {
  backend "s3" {
    bucket = "qovery-erebe-tf-test"
    key    = "path_to_my_key"
    region = "eu-west-3"
    use_lockfile = true
  }
}

