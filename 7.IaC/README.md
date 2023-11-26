# Infrastructure as Code (IaaC) Report

This repository contains Terraform code for deploying Infrastructure as Code (IaaC) on AWS. The code is organized into modules, each responsible for a specific aspect of the infrastructure. The main Terraform file (main.tf) orchestrates the deployment by leveraging these modules.

## Directory Structure

```
- 7.IaaC
  - backend.tf
  - main.tf
  - variables.tfvar
  - /Modules
    - /ACL
    - /ASG
    - /ELB
    - /MemCached
    - /NAT
    - /RDS
    - /Redis
    - /RouteTable
    - /SG
    - /Subnets
    - /VPC
```

## Modules
### VPC Module (/Modules/VPC)
Creates a new Virtual Private Cloud (VPC) on AWS.
### Subnets Module (/Modules/Subnets)
Creates VPC subnets with associated Internet Gateways.
### RouteTables Module (/Modules/RouteTables)
Creates Route Tables for public and private subnets.
### NAT Module (/Modules/NAT)
Creates Network Address Translation (NAT) gateways for private subnets.
### SG Module (/Modules/SG)
Creates Security Groups for EC2 instances.
### ACL Module (/Modules/ACL)
Creates Access Control Lists (ACL) for subnets.
### ASG Module (/Modules/ASG)
Creates an Auto Scaling Group for managing EC2 instances.
### ELB Module (/Modules/ELB)
Creates an Elastic Load Balancer (ELB) for distributing incoming traffic.
### RDS Module (/Modules/RDS)
Creates a Relational Database Service (RDS) instance.
### Redis Module (/Modules/Redis)
Creates an Amazon ElastiCache Redis cluster.
### MemCached Module (/Modules/MemCached)
Creates an Amazon ElastiCache Memcached cluster.
### Main Terraform File (main.tf)
Sets Terraform to work with AWS in the us-east-1 region.
Declares and configures various modules for creating different components of the infrastructure.
### Variables File (variables.tfvar)
Contains variable definitions used across the Terraform code.
### Key Pair and Private Key
Generates an RSA key pair for secure communication with EC2 instances.
Creates an AWS key pair and saves the private key in a local file.

### Note
Ensure that all variables in the variables.tfvar file are configured appropriately before running Terraform commands.

## How to Use
* Clone this repository.
* Navigate to the ./7.IaaC directory.
* Update the variables.tfvar file with your specific configurations.
* Run `terraform init` to initialize the working directory.
* Run `terraform apply` to apply the IaaC and deploy the infrastructure.

*Caution*: Be cautious when applying changes to your infrastructure, as it may incur costs and affect existing resources.