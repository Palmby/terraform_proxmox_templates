terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.7.4"
    }
  }
}

provider "proxmox" {
    pm_api_url = "https://10.0.0.4:8006/api2/json" #Using my ip as an example
  
  pm_api_token_id = #tokenID
  
  pm_api_token_secret = #tokensecret
  
  pm_tls_insecure = true
}