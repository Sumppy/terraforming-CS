#
# Provider Configuration
#

provider "aws" {
  region  = "eu-central-1"
  version = ">= 4.3.0"
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}