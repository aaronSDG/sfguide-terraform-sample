terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.76"
    }
  }
}

provider "snowflake"{ 
      alias = "sys_admin" 
      role = "SYSADMIN" 
      region = "AWS_CA_CENTRAL_1" 
      account = "YF65955" 
      private_key_path = "./snowflake_tf_snow_key.p8" 
      username = "tf-snow" 
} 

resource "snowflake_database" "db" {
  name = "TF_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "large"
  auto_suspend   = 60
}
