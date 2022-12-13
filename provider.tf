terraform {
  required_providers {
    splunk = {
      source  = "splunk/splunk"
      version = "1.4.4"
    }
  }
}

provider "splunk" {
  url                  = "23.23.65.93:8089"
  username             = "awsome"
  password             = "Password"
  insecure_skip_verify = true
}
