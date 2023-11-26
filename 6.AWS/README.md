# AWS Basics

<!-- TOC start (generated with https://github.com/derlin/bitdowntoc) -->

- [Table of Contents](#table-of-contents)
   * [A dedicated Amazon Virtual Private Cloud (VPC) ](#a-dedicated-amazon-virtual-private-cloud-vpc)
   * [In additional to above, it require to create Internet Gateway](#in-additional-to-above-it-require-to-create-internet-gateway)
   * [And attach it to VPC](#and-attach-it-to-vpc)
   * [Create ACL](#create-acl)
   * [A security group (web-sg) was created with the rules specified in the task.](#a-security-group-web-sg-was-created-with-the-rules-specified-in-the-task)
   * [A private RSA key (Key Pairs) was generated for use in the future when creating instances.](#a-private-rsa-key-key-pairs-was-generated-for-use-in-the-future-when-creating-instances)
   * [Two t2.micro instances ](#two-t2micro-instances)
   * [An Elastic Load Balancing (ELB)](#an-elastic-load-balancing-elb)
   * [A PostgreSQL instance](#a-postgresql-instance)
   * [The web-sg security group](#the-web-sg-security-group)
   * [One ElastiCache (Redis) instance and one ElastiCache (Memcached) ](#one-elasticache-redis-instance-and-one-elasticache-memcached)
   * [A CloudFront Distribution](#a-cloudfront-distribution)
- [Problems](#problems)

<!-- TOC end -->

<!-- TOC --><a name="aws-basics"></a>
# AWS Basics

<!-- TOC --><a name="table-of-contents"></a>
# Table of Contents

* [A dedicated Amazon Virtual Private Cloud (VPC) ](#A-dedicated-Amazon-Virtual-Private-Cloud-(VPC))
* [In additional to above, it require to create Internet Gateway ](#In-additional-to-above,-it-require-to-create-Internet-Gateway)
* [Заголовок 3](#заголовок-3)

<!-- TOC --><a name="a-dedicated-amazon-virtual-private-cloud-vpc"></a>
## A dedicated Amazon Virtual Private Cloud (VPC) 
A dedicated Amazon Virtual Private Cloud (VPC)  network with two public subnets in different zones and one private subnet wascreated.

![alt text](./images/1.png)
![alt text](./images/2.png)
![alt text](./images/3.png)
![alt text](./images/4.png)

<!-- TOC --><a name="in-additional-to-above-it-require-to-create-internet-gateway"></a>
## In additional to above, it require to create Internet Gateway

![alt text](./images/5.png)

<!-- TOC --><a name="and-attach-it-to-vpc"></a>
## And attach it to VPC

![alt text](./images/7.png)

<!-- TOC --><a name="create-acl"></a>
## Create ACL

![alt text](./images/8.png)

<!-- TOC --><a name="a-security-group-web-sg-was-created-with-the-rules-specified-in-the-task"></a>
## A security group (web-sg) was created with the rules specified in the task.

![alt text](./images/9.png)

<!-- TOC --><a name="a-private-rsa-key-key-pairs-was-generated-for-use-in-the-future-when-creating-instances"></a>
## A private RSA key (Key Pairs) was generated for use in the future when creating instances.

![alt text](./images/10.png)

<!-- TOC --><a name="two-t2micro-instances"></a>
## Two t2.micro instances 

Two t2.micro instances were created in the created VPC and public subnets. Nginx was installed on the instances and a simpleplaceholder page was created on port 80.

![alt text](./images/11.png)

<!-- TOC --><a name="an-elastic-load-balancing-elb"></a>
## An Elastic Load Balancing (ELB)

An Elastic Load Balancing (ELB) was created with support for the created availability zones. HTTP traffic to the ELB wasallowed from any IP address. The two instances were added to the ELB. A health check was configured for the HTTP protocol,port 80, index.

![alt text](./images/12.png)

<!-- TOC --><a name="a-postgresql-instance"></a>
## A PostgreSQL instance
A PostgreSQL instancewas created in the dedicated VPC and private subnet with general purpose storage type and a volume of20 GB. 

![alt text](./images/15.png)

<!-- TOC --><a name="the-web-sg-security-group"></a>
## The web-sg security group
The web-sg security group was used. Only incoming traffic from the web-sg was allowed. It was demonstrated that it ispossible to connect to the RDS from at least two source points (servers).

![alt text](./images/16.png)
![alt text](./images/17.png)

<!-- TOC --><a name="one-elasticache-redis-instance-and-one-elasticache-memcached"></a>
## One ElastiCache (Redis) instance and one ElastiCache (Memcached) 
One ElastiCache (Redis) instance and one ElastiCache (Memcached) instance were created in the dedicated VPC. Only trafficwithin the dedicated VPC was allowed. It was demonstrated that it is possible to connect to Redis and Memcached from at leasttwo source 
points (servers).

![alt text](./images/18.png)
![alt text](./images/19.png)
![alt text](./images/20.png)

<!-- TOC --><a name="a-cloudfront-distribution"></a>
## A CloudFront Distribution
A CloudFront Distribution was created with default parameters. A bucket was created in S3 and filled with 100 small files (<512 Kb). Object storage policies for this S3 bucket were configured as follows:
* After 30 days, objects are sent to Glacier.
* After 6 months of storage, objects are permanently deleted from Glacier.

Memcached:

![alt text](./images/21.png)
![alt text](./images/22.png)

Redis:

![alt text](./images/23.png)
![alt text](./images/24.png)

<!-- TOC --><a name="problems"></a>
## Problems:

There were no problems encountered while completing the task.
