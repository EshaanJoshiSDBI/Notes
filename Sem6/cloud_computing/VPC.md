## AWS VPC
- AWS has been working on provifing security solutions to the clients because let's face it, data breach is one of the common problems especially when data is being shared amongst people in a cloud platform. AWS makes sure that your data is protected from unauthorized access by introducing VPC that is an isolated network within the cloud.

### What is AWS VPC?
- Amazon VPC is the network later for Amazon EC2 that allows you to launch AWS resources (instances) into a user-defined virtual network
- In a virtual network, you can use any of the services provided by AWS. You have full control over the traffic to and from the instances.
- There are three types of VPCs - Default VPC and user-defined VPC. In default VPC, it has the latest features of EC2 VPC.
- User-defined VPC gives you the option to configure it according to your requirement.
- Subnets created in the user-defined VPC are known as non-default subnets.
- VPC is designed to provide a great level of security to protect the resources and separate it from other resources.
- We can set up the network topology according to your requirements.
- For instance, if we want our resources to be not visible to the public or we want the resources to be accessible through the internet.
- Take an example of a traditional network present in a data center that consists of hardware resources, and other logical components.
- Amazon VPC is a software based network that works just like a physical data center and is used to transfer packets across the region in a secured manner.

### Components of VPC
- VPC is dedicated to our account. It's separate from other VPCs in the cloud. We can add instances, subnets, allocate IP address range for the VPC, and configure routing tables and many more. Below are the components discussed in detail.
#### Subnet
- A VPC is stretched across an AWS region. A region encompasses of one or more availability zones.
- Amazon VPC inclused subnets that are used for the purpose of separating resources in a particular region.
- A subnet can't be extended across multiple availability zones. A subnet is a division of a larger of network into smaller networks or subnets. We can run resources into any specific subnet.
- A public subnet is suitable for resources that need internet access, while a private subnet won't have access to the internet. Subnets not only logically separate resources but they make our applications fault tolerant
- Resources found in every subnet can communicate with each other using private IP addresses.

#### Supported platforms
- When EC2 was first introduced, it supported a single network platform that was shared amongst users called EC2 classic.
- Earlier AWS accounts supported EC2 classic as well as VPC but now, accounts only have the support of VPC, using VPC we get authority to:
    - Assign private IPv4 address to the instances. .
    - Assign IPv6 addresses to the instances.
    - Choose multiple addresses for the instance
    - Introduce network interfaces and assign it to the instances.
    - Modify the security group membership for the instances.

|Default|Non Default|
|:-----:|:---------:|
|Virtual network is automatically created for the customer first time and EC2 resources are provisioned|Virtual network is created by the user based on their requirements(not created automatically, rather the customer defines it)|
|VPC assigned when an instance is launched without allocating subnet - Default VPC|NA|
|Private and Public IPv4 addresses assigned|Private IPv4 is assigned|
|Has internet gateway|No internet gateway|
|Is fully ready to use|Partially ready to use|
|1 VPC lapse region|5 VPC lapse region|

#### Rules to create VPC
- Plan before we create a VPC: Important to take some time out to plan out the design of the architecture for the VPC. A poor VPC design hurts the availability, flexibility and security of the structure. Think of the objective of creating a VPC. Identify the number of subnets we need and what connections we'll need to connect remote networks.
- Decide the CIDR block: A VPC has 

#### Steps to create VPC
- We will use the IPv4 classless inter-domain routing block to create a VPC. There will be two subnet - private and public
- To make a private subnet accessible to the internet, a NAT gateway will be used. Furthermore, the VPC will have security groups, as well as ACL, configured to allow inbound and outbound traffic
1. Create a VPC having /16 as its subnet mask and IPv4 CIDR block such as 10.0.0.0/16
2. Create an internet gateway and allocate it to this VPC
3. Create a apublic subnet having /24 as its subnet mask and IPv4 CIDR block such as 10.0.0.0/24
4. Create another private subnet having /24 IPv4 CIDR block such as 10.0.1.0/24
5. Note that the CIDR block must be a subset of a VPC CIDR block and shouldn't be the same as the CIDR block of a public subnet.
6. Generate a customer route table and create a path for all the traffic going to the internet via the gatewat
7. Assign this route table with the public subnet. Create a NAT gateway and attach it ot the public subnet.
8. Allot Elastic IP address to the NAT gatewat. Repeat step 6 for the private subnet.
9. Create a network ACL for the subnets and add rules that will define inbound and outbound traffic.
10. Generate security groups for instances to be stored in public and private subnets. Devise the rules for these security groups and assign them with instances.
11. Create one instance in public and private subnet both. Allocate a security group to each of the instance
12. An instance in a public subnet must have a public EIP or IP address.
13. Check that the public instances can access the internet while the private instances can have access to the internet through NATGenerate security groups for instances to be stored in public and private subnets. Devise the rules for these security groups and assign them with instances.
11. Create one instance in public and private subnet both. Allocate a security group to each of the instance
12. An instance in a public subnet must havea public EIP or IP address.
13. Check that the public instances can access the internet while the private instances can have access to the internet through NATGenerate security groups for instances to be stored in public and private subnets. Devise the rules for these security groups and assign them with instances.
11. Create one instance in public and private subnet both. Allocate a security group to each of the instance
12. An instance in a public subnet must havea public EIP or IP address.
13. Check that the public instances can access the internet while the private instances can have access to the internet through NAT.
