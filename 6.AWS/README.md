# AWS Basics

A dedicated Amazon Virtual Private Cloud (VPC) network with two public subnets in different zones and one private subnet wascreated.
![alt text](./images/1.png)
![alt text](./images/2.png)
![alt text](./images/3.png)
![alt text](./images/4.png)

In additional to above, it require to create Internet Gateway
![alt text](./images/5.png)

And attach it to VPC
![alt text](./images/7.png)

Create ACL
![alt text](./images/8.png)

A security group (web-sg) was created with the rules specified in the task.
![alt text](./images/9.png)

A private RSA key (Key Pairs) was generated for use in the future when creating instances.
![alt text](./images/10.png)

Two t2.micro instances were created in the created VPC and public subnets. Nginx was installed on the instances and a simpleplaceholder page was created on port 80.
![alt text](./images/11.png)

An Elastic Load Balancing (ELB) was created with support for the created availability zones. HTTP traffic to the ELB wasallowed from any IP address. The two instances were added to the ELB. A health check was configured for the HTTP protocol,port 80, index.
![alt text](./images/12.png)

A PostgreSQL instance was created in the dedicated VPC and private subnet with general purpose storage type and a volume of20 GB. 
![alt text](./images/15.png)

The web-sg security group was used. Only incoming traffic from the web-sg was allowed. It was demonstrated that it ispossible to connect to the RDS from at least two source points (servers).
![alt text](./images/16.png)
![alt text](./images/17.png)

One ElastiCache (Redis) instance and one ElastiCache (Memcached) instance were created in the dedicated VPC. Only trafficwithin the dedicated VPC was allowed. It was demonstrated that it is possible to connect to Redis and Memcached from at leasttwo source 
points (servers).
![alt text](./images/18.png)
![alt text](./images/19.png)
![alt text](./images/20.png)

A CloudFront Distribution was created with default parameters. A bucket was created in S3 and filled with 100 small files (<512 Kb). Object storage policies for this S3 bucket were configured as follows:
* After 30 days, objects are sent to Glacier.
* After 6 months of storage, objects are permanently deleted from Glacier.

Memcached:
![alt text](./images/21.png)
![alt text](./images/22.png)

Redis:
![alt text](./images/23.png)
![alt text](./images/24.png)

Problems:

There were no problems encountered while completing the task.