# EBS
- A virtual SSD.
- A type of block storage volume designed for Amazon EC2 that is similar to a hard disk.
- The EBS volumes are like unformatted and raw block devices where you could store any type of data.
- These volumes can be mounted as devices on your instances.
- You've got the option to mount as many volumes as you want on one particular instance, however, each volume can be attached to one instance at a time.
- Limitation on the number of EBS volumes you can use and the amount of storage available to you.
- If you want to access data quickly and want to ensure data persistence, you should go for Amazon EBS as its ideal for use for databases, applications.
- With low latenct, we can achieve high performance of heavy workloads such as data warehouse and big data.
- AWS EBS is meant for database-related applications that frequently perform read and write operations.

## Features
- An instance created in a specific availability zone is attached to an EBS volume in the same zone. You've to first create a volume in availability
