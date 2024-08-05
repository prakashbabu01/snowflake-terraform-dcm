terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }


  backend "remote" {
    organization = "snowflake-prod"

    workspaces {
      name = "snowflake-prod-workspace"
    }
  }

}

provider "snowflake" {


}

resource "snowflake_database" "mysnowdb" {
  name    = "mysnowdatabase"
  comment = "snowflake database using terraform"
}
