terraform {
  backend "kubernetes" {
    secret_suffix  = "ea9d6258-0bbc-47ed-b443-e4aaf06c98ba"
    namespace      = "za0cd0187-tf"
    config_path    = "/tmp/terraform_service_engine_testing/variable_output/kubeconfig-be9e22b0-d05a-4330-b5b5-547667d380fd.yaml"
  }
}
