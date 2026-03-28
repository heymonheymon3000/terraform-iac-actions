# VPC Input Variables

# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type = string
  default = "myvpc"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string
  default = "10.0.0.0/16"
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Database Subnets
variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Create Database Subnet Group (True / False)
variable "vpc_create_database_subnet_group" {
  description = "VPC Create Database Subnet Group"
  type = bool
  default = true
}

# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type = bool
  default = true
}

# VPC Enable NAT Gateway (True or False)
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type = bool
  default = true
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}

# VPC One NAT Gateway Per AZ (True or False)
variable "vpc_one_nat_gateway_per_az" {
  description = "Should be true if you want only one NAT Gateway per availability zone. Requires `var.azs` to be set, and the number of `public_subnets` created to be greater than or equal to the number of availability zones specified in `var.azs`"
  type = bool
  default = false
}

#  VPC Create Internet Gateway Route for Public Database Access (True or False)
variable "vpc_create_internet_gateway_route_for_public_database_access" {
  description = "Controls if an internet gateway route for public database access should be created"
  type = bool
  default = false
}

#  VPC Create NAT Gateway Route for Internet Access to Database Subnet (True or False)
variable "vpc_create_nat_gateway_for_internet_access_to_database_subnet" {
  description = "Controls if a nat gateway route should be created to give internet access to the database subnets"
  type = bool
  default = false
}
