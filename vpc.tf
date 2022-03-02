#
# VPC Resources
#  * VPC
#  * Subnets
#  * Internet Gateway
#  * Route Table
#

resource "aws_vpc" "terraform-CS" {
  cidr_block = "10.0.0.0/16"

  tags = tomap({
    "Name"                                      = "terraform-eks-CS-node",
    "kubernetes.io/cluster/${var.cluster-name}" = "shared",
  })
}
