#### Define IOT and what are the characteristics of IOT
- It describes the physical objects with sensors, processing ability, software and other technologies that connect and exchange data with other devices and systems over the internet or other communications networks.
- Devices need not be connected to the public internet, they only need to be connected to a network and be individually addressable.
- Basically `physical objects + (controller/sensor/actuators) + internet = internet of things`
- Characteristics of IOT:
	+ Connectivity: Anyone, anywhere and anytime can connect to the devices.
	+ Scalability: The IOT system should be capable of handling the massive expansion.
	+ Dynamic and Self-adapting: IOT systems may have the capability to change dynamically depending upon the system and operating conditions or sensed environment.
	+ Architecture: The architecture cannot be homogenous in nature and should be hybrid.
	+ Integrated into information network: Allows the devices them to communicate and exchange data with other devices and system.
	+ IOT devices can communicate with # of interoperable communication protocols.
	+ Self-configuring: IOT devices have self-configuring capability which allows large number of devices to work together to provide certain functionality, they can change their networking and update the software automatically.
#### Define different scenarios where IOT can be applied
- **Wearables**: Virtual glasses, fitness bands to monitor calorie expenditure and heart beats.
- **Health**: Allowing doctors to monitor a patient's condition outside the hospital and in real-time. Continuously monitoring certain metrics and automatic alerts on their vital signs, IOT helps to improve the care for patients and the prevention of lethal events in high-risk patients.
- **Traffic monitoring**: IOT is useful in the management of vehicular traffic in large cities, contributing to the concept of smart cities. When we use our mobile phones as sensors, which collect and share data from our vehicles through applications such as google maps.
- **Fleet management**: Installing sensors in fleet vehicles helps to establish an effective interconnectivity between the vehicles and their managers as well as between the vehicles and their drivers. The application of the IOT to fleet management assists with geolocation, performance analysis, telemetary control and fuel savings, etc.
- **Agriculture**: Through IOT sensors, a significant amount of data can be obtained on the stage and stages of the soil, soil moisture, acidity levels etc. IOT offers farmers the possibility to access detailed knowledge and valuable information of their soil condition.
- **Hospitality**: Implementation of electronic keys, interactions like room service or sending orders to the room can be automated.
- **Smart grid and energy saving**: Using meters equipped with sensors, intelligent enerdy meters and installing sensors in different strategic points that go from the production plants to the different distribution points, allows better monitoring and control of the electrical network. Establshing a bidirectional communication between the service provider company and the end user, information of enormous value can be obtained for the detection of faultsm decision making and repair thereof.
- **Water supply**: IOT can help in collecting, processing and analyze data which allows understanding the behavior of consumers, detecting faults in the supply service, report results and offer courses of action to the company that provides the services.
#### What are the benefits of IOT
- Achieve customer-centricity: Using advacned IOT tech we can enhance customer experience increasing customer satisfaction which the a very critical factor for any business.
- Gathering rich data: IOT helps gathering a huge chunk of data about customers and company products. Analyzing this data we can improve product / services quality, eg: IOT enables cars helps to monitor the engine / tyre condition and usage.
- Reduction in operational cost: Use of IOT devices in manufacturing industries can help to track and monitor equipment and also reduce the downtime of equipment because by using the smart devices the future failover or errors of equipment can be predicted easily.
- Minimize human effort: IOT devices can interact with each other and automate a lot of tasks for us, hence minimizing human efforts for trivial tasks which can be used for other more important or complex tasks.
- Access information in real-time: Well setup IOT systems can provide up to the second information. Eg: Products throughout a large warehouse are all connected to the local network, these persistent connections provide information such as product movement logged in with time and date, and data on when new stock needs to be ordered and in what quantities.
#### Explain IOT protocols
- IOT protocols are an integral part of the tech stack for IOT. It enables hardware to exchange data.
- There are two separate categories. These are:
	+ IOT data protocols(Application layers)
		* Used to connect low-power IOT devices. It provices communication with hardware on the user side - without the need for any internet connection.
		* MQTT(Message Queuing Telemetry Transport): It is a publisher-subscriber messaging model and allows for simple data flow between different devices.
		* CoAP(Constrained Application Protocol): Designed to address the needs of HTTP-based IOT systems.
		* AMQP(Advanced Message Queuing Protocol): Open standard application layer protocol used for transactional messages between servers. Its functions are: Receiving and placing messages in queues, storing messages, setting up a relationship between these components.
		* HTTP(HyperText Transfer Protocol): Application-layer protocol for transmitting hypermedia documents such as html.
		* Websocket: Helps simplify many of the complexities and difficulties involved in the management of connections and bi-direction communication on the internet.
	+ Network protocols
		* WiFi: Provides an internet connection to nearby devices within a specific range.
		* Zigbee: A simple packet data exchange protocol often implemented in devices with small requirements. Has lower consumption, low data-range, high-security and a longer range of communcation than bluetooth.
		* LoRaWan: A Media Access Control (MAC) IOT protocol. It allows low-powered devices to communicate directly with internet-connected applications over a long-range wireless connection, it has the capability to be mapped to both the 2nd and 3rd layer of the OSI model.
#### Different Layers
- Link layer: This protocol determines how the data is physically sent over the network layer.
	- It determines how the packets are coded and signaled by the hardware device over the medium to which the host is attached.
- Network/Internet Layer: The network layers are responsible for sending of IP datagram's from the source network to the destination network. It performs host addressing and packet routing.
- Transport Layer: The transport layer protocols provide end to end message transfer capability independent of the underlying network. The function of the transport layer is to provide functions such as error control, segmentation, flow control and congestion control.
	+ TCP: It is most widely used for data transmission in communication network such as internet, provides process to process communication using port numbers.
	+ UDP: It is the simples protocol that involves minimum amount of communication mechanism. It is connectionless, unreliable transport protocol. It does not provide guaranteed delivery of the message.
- Application Layer: An application layer protocol defines how application processes, running on different end systems, pass messages to each other. It defines the types of messages (request and response messages), syntax of the various message types(fields in the messages, how the fields are delineated), meaning of the information, rules for determining when and how a process sends messages and responds to messages.
#### Difference between TCP and UDP
|TCP|UDP|
|:-:|:-:|
|Connection oriented|Connectionless|
|High-reliability, critical-less transmission time|Fast, efficient transmission, small queries, huge numbers of clients|
|Rearrange packets in order|No inherent order|
|It is more reliable|Not as reliable as TCP|
|Reads as a byte stream|Data is sent and read individually|
|Has error checking and recovery|No error recovery, only checking|
|Acknowledgement segments|No acknowledgement|
#### Difference CoAP and HTTP data protocols
|CoAP|HTTP|
|:--:|:--:|
|Uses UDP|Uses TCP|
|Uses IPv6 along with 6LoWPAN|Uses IP layer|
|Supports multicast|Doesn't support multicast|
|Uses both client-server and publish-subscribe models|Uses client-server architecture|
|Does not need synchronous communication|Needs synchronous communication|  
|Less overhead|More overhead and complex compared to CoAP|
|Designed for resource constrained networking devices such as WSN/IoT/M2M|Designed for internet devices where there is no issue of any resources|
#### Explain IOT communication models (with diagram)
- Request-Response
	+ Client sends request to the server and the server responds to the request
	+ The server then decides how to respond, fetches the data, retrieves the resources and prepares the response and sends to the client.
	+ The request and response pair is independent of each others.
	+ <img src="Screenshot from 2022-08-15 12-39-19.png"/>
- Publish-Subscribe
	+ This model involves publishers, brokers and consumers.
	+ Publishers are the sources of data, publishers send the data to the topic which are managed by the broker. Consumers subscribe to the topics which are managed by the broker.
	+ Publishers are not aware of the consumers. When broker receives the data from the publisher, it sends to all the consumers.
	+ <img src="Screenshot from 2022-08-15 12-42-42.png"/>
- Push-Pull
	+ Here the producers push the data in queues and the consumers pull the data from those queues.
	+ Queues act as a buffer which helps in situation when there is mismatch between the rate at which the producers push the data and consumers pull the data. Queues also help in decoupling the messaging between the producer and consumers.
- Exclusive pair
	+ It is a bi-directional, fully duplex communication model that uses a persistent connection between the client and server. Once connection is established it remains open until the client sends a request to closer the connection.
	+ Both client and server can send the message to each other after connection setup. In this model server is aware of all the open connections.
	+ <img src="Screenshot from 2022-08-15 12-48-30.png"/>
#### Differentiate between REST based API and WebSocket based API
|REST based API|WebSocket based API|
|:------------:|:-----------------:|
|HTTP is the common protocol in RESTful web services|Use of HTTP occurs only in initial connection|
|Based on HTTP protocol and uses HTTP methods to relay data| Relies on IP address and Port number|
|Cost of communication is comparatively higher|Cost of communication is comparatively lower|
|Great for occassional communication|Better with high loads|
|It is a stateless protocol|It is a stateful protocol|
|Communication is uni-directional in nature|Communication is bi-directional in nature|
|Eg: Real-time chat application|Eg: Lots of get requests|
#### Write a short note on WSN (diagram, applications, example)
- A WSN (Wireless Sensor Network) is a distributed network with large number of sensors which are used to monitor the environmental and physical conditions.
- A WSN consists of end nodes, routers and co-ordinator. End nodes have several sensors attached to them where the data is passed to co-ordinator with the help of routers. The co-ordinator also acts gateway that connects WSN to internet.
- WSN are enables by protocols such as 802.15.4, ZigBee, etc.
- <img src="Screenshot from 2022-08-15 13-04-08.png"/>
- Applications:
	+ Internet of Things (IoT)
	+ Surveillance and Monitoring for security, threat detection
	+ Environmental temperature, humidity and air pressure
	+ Noise level of the surrounding
	+ Medical applications like patient monitoring
	+ Agriculture
	+ Landslide detection
- Eg:
	+ Weather monitoring system uses WSN which collects data of temperature, humidity which are aggregated and analyzed, indoor air quality monitoring system, Soil moisture monitoring system, surveillance systems, health monitoring system, etc.
	+ <img src="Screenshot from 2022-08-15 13-06-11.png"/>
---
#### Explain architecture of M2M
- Machine-to-Machine (M2M) refers to the communication or exchange of data between two or more machines without human interference or interaction.
- It can either be wired or wireless.
- It uses a device such as sensor, RFID, etc to capture an event eg temperature, etc which is then relayed through a network to an application that translates the captured event into meaningful information.
- M2M often use public networks and access methods like cellular or ethernet, which makes it cost-effective.
- <img src="Screenshot from 2022-08-15 13-15-32.png"/>
- The main components of M2M systems are:
	+ Applicaton Domain
		* Contains the middleware layer where the data goes through various application services and is used by the specific business processing engines.
		* Applications may either target at end users or at other applications which provides a more refined building blocks by which they can build more sophisticated M2M solutions and services.
	+ Communication networks
		* Provides the connectivity between M2M nodes and M2M applications.
		* Acts as the infrastructure for realizing communication between M2M gateway and M2M end user.
		* It uses wired or wireless network such as LAN, WiMAX, satellite communication.
	+ M2M gateway
		* Gateway modules provides control and localization services for data collection, it also doubles up in concentrating traffic to the operator's core.
		* It supports Bluetooth, ZigBee, GPRS capabilities.
	+ M2M area networks
		* Consists of machines or M2M nodes which communicate with each other. Nodes embedded with hardware modules such as sensors, actuators and communcation devices.
		* M2M nodes communicate within one network it can't communicate with external network node. To enable the communication between remote M2M area networks, M2M gateways are used.
- <img src="Screenshot from 2022-08-15 13-17-53.png"/>
#### Write a short note on SDN
- Software Defined Networking (SDN) is an approach to networking that uses software based controllers or application programming interfaces to coomunicate with underlying hardware infrastructure and direct traffic on a network.
- It is an architecture designed to make a network more flexible and easier to manage. SDN centralizes management by abstracting the control plane from the data forwarding function in the discrete networking devices.
- This model differs from that of traditional networks, which use dedicated hardware devices to control network traffic. SDN can create and control a virtual network or control a traditional hardware via software
- Elements of SDN:
	+ A controller which enables centralized management and control, automation and policy enforcement across physical and virtual network environments.
	+ Southbound APIs that relay information between the controller and the individual network devices like access points, firewalls, routers, etc)
	+ Northbound APIs that relay information between the controller and the applications and policy engines to which an SDN looks like a single logical network device.
- Models of SDN
	+ Open SDN: Network administrators use a protocol like OpenFlow to control the behavoir of virtual and physical switches at the data plane level
	+ SDN by APIs: Instead of using an open protocol, application programming interfaces control how data moves through the network on each device.
	+ SDN Overlay Model: Another type of software-defined networking runs a virtual network on top of an existing hardware infrastructure, creating dynamic tunnels to different on-premise and remote data centers. The virtual network allocates bandwidth over a variety of channels and assigns devices to each channel, leaving the physical network untouched.
	+ Hybrid SND: A combination of SDN with traditional networking protocols in one environment to support different functions on a network.
#### Explain the architecture of SDN with the diagram.
<img src="Screenshot from 2022-08-15 13-47-55.png"/>

- Key components of SDN
	+ Centralized Network Controller
		* With centralized network controller, separated control plan and data plan the network administrator can rapidly configure the network.
	+ Programmable open APIs
		* SDN architecture supports programmable open APIs for interface between the SDN application and control layers. Applications can be deployed through programmable APIs which speeds up innovation as the network administrator no longer need to wait for the device vendors to embed new features in hardware.
	+ Standard Communication interface (open flow)
		* The standard communication interface between control layer and infrastructure layer
- <img src="Screenshot from 2022-08-15 13-58-23.png"/>
- Application layer
	+ Contains the typical network applications or functions organizations use. This can include intrusion detection systems, load balancing, firewalls, etc.
- Control layer
	+ Represents the centralized SDN controller software that acts as the brain of the SDN. This controller resides on a server and manages policies and traffic flows throughout the network.
- Infrastructure layer
	+ Made up of the physical switches in the network. These switches forward the network traffic to their destinations.
- Working of SDN:
	+ In a classic scenario, a packet arrives at a network switch. Rules built into the switch tells it where to forward the packet. These packet-handling rules are sent to switch from the centralized controller.
	+ Switch (also knows as a data plane device) queries the controller for guidance as needed and provides the controller with information about the traffic it handles. The switch sends every packet going to the same destination along the same path and treats all the packets the same way.
	+ The virtualization aspect of SDN is through a virtual overlay, which is a logically separate network on top of the physical network.This microsegmentation is especially useful for service providers and operators with multi-tenant cloud environments and cloud services, as they can provision a separate virtual network with specific policies for each tenant.
	+ SDN uses an operation mode that is sometimes called adaptive or dynamic, in which a switch issues a route request to a controller for a packet that does not have a specific route.
#### Which protocol is used for SDN?
- OpenFlow is the standard southbound protocol used between the SDN controller and the switch.
#### Write a short note on NFV
- <img src="Screenshot from 2022-08-15 14-12-21.png"/>
- Network Functions Virtualization (NFV) is a way to virtualize network services, such as routers, firewalls and load balancers that have traditionally been run on proprietaty hardware.
- These services are packaged as virtual machines (VMs) on commodity hardware, which allows service providers to run their network on standard servers instead of propreitary ones.
- We don't need to have dedicated hardware for each network function. NFV improves scalability and agility by allowing service providers to deliver new network services and applications on demand, without requiring additional hardware resources.
- NFV architecture consists of:
	+ Virtualized Network Functions: VNFs are software applications that deliver network functions such as file sharing, directory services and IP configuration.
	+ Network Functions Virtualization Infrastructure: NFVi consists of the infrastructure components - compute, storage, networking on a platform to support software, such as a hypervisor like KVM or a container management platform, needed to run network apps.
	+ Management, Automation and Netowrk Orchestration: MANO provides the framework for managing NFV infrastructure and provisioning new VNFs
- NFV provides the infrastructure on which SDN can run. NFV and SDN are mutually beneficial to each other but not dependent.
- SDN separates network forwarding functions from network control functions with the goal of creating a network that is centrally manageable and programmable. NFV abstracts network functions from hardware. NFV supports SDN by providing the infrastructure on which SDN software can run.