#The configuration for the `remote` backend.
     terraform {
	   required_providers {
		okta = {
         source = "okta/okta"
         version = "3.13.11"
		 }
	   }
     }

     provider "okta" {
       # Configuration options
	   org_name  = "dev-28819048"
       base_url  = "okta.com" # your organization url
       api_token = "00PYS6PZoOnXNh0d83MBaGpKMhcLc9caBZJRKuG-wM"
     }
	 resource "okta_group" "example" {
       name        = "Terraform"
       description = "My Terraform Group"
     }
	 resource "okta_user" "example" {
	  first_name         = "vijay"
	  last_name          = "kumar"
	  login              = "vijay.kumar@example.com"
	  email              = "vijay.kumar@example.com"
	   
	}
	 resource "okta_policy_password" "example" {
	  name                   = "terraform"
	  status                 = "ACTIVE"
	  description            = "terraform policy"
	  password_history_count = 4
	  
	}