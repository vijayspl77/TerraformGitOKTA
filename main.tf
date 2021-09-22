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
       name        = "TerraformGroup"
       description = "My Terraform Group"
     }
	 resource "okta_user" "example" {
	  first_name         = "terraformFName"
	  last_name          = "terraformLName"
	  login              = "vijay.kumar@terraform.com"
	  email              = "vijay.kumar@terraform.com"
	   
	}
	 resource "okta_policy_password" "example" {
	  name                   = "terraformPwdPolicy"
	  status                 = "ACTIVE"
	  description            = "terraform policy"
	  password_history_count = 4
	  
	}