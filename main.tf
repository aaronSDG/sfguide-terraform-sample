terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.76"
    }
  }
}

provider "snowflake" {
  username   = "AARON"
  password   = "aaronCastro9578"
  role = "SYSADMIN"
  account    = "https://yf65955.ca-central-1.aws.snowflakecomputing.com"
  warehouse  = "COMPUTE_WH"
}

resource "snowflake_database" "db" {
  name = "TF_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "large"
  auto_suspend   = 60
}
