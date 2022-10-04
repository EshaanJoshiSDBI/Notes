### Issues with Wireless Media Access
- Half duplex operation: When the sender and receiver both are capable of sharing data but one at a time.
	+ Magnitude of the transferred signal and received signal differs a lot. Due to which collision detection is even not possible by the sender as the intensity of the transferred signal is large than the received one. Hence this causes the problem of collision and the prime focus should be to minimize the collision.
- Time-varying channel: Includes three mechanisms for radio signal propagations they are `reflection`, `diffraction` and `scattering`.
	+ Reflection occurs when a propagating wave carrying information intrudes on an object that has very large dimenstions than the wavelength of the wave.
	+ Diffraction occurs when the radio path between the transmitter and the receiver is collided by the surface with sharp edges. It causes the diffraction of the wave from the targeted position.
	+ Scattering occurs when the medium through which the wave is travelling consists of some objects which have dimensions smaller than the wavelength of the wave.
	+ While transmitting the signal it is time shifted and this is called multipath propagation. When signal's intensity is dropped below a threshold value, it is termed as fade. Hence handshaking strategy is widely used.
- Burst channel errors: Contiguous sequence of symbols, which are received in a communication channel, where the first and last symbols has an error and there is no evidence of contiguous sub-sequence of corrected recieved symbols.

### Medium Access Control
> MAC provides flow control and multiplexing for the transmission medium.
- It is a sublayer that controls the hardware responsible for interaction with the wired, optical or wireless transmission medium. The MAC sublayer and the Logical Link Control (LLC) sublayer together make up the data link layer.
- It determines how data is transmitted between two computer terminals through a network. It ensures non-collision and eases the transfer of data packets between 2 computer terminals.

### MAC Methods
- Carrier Sense Multiple Access with Collision Avoidance (CSMA/CA):
	+ Developed to minimize the potential of a collision occurring when two or more stations send their signals over a data link layer.
	+ It requires each station to first check the state of the medium before initiating a transmission. This helps to avert potential collisions by listening to the broadcasting nodes and then informing devices to transmit when the channel is free. If channel is not clear, the node waits for a randomly chosen period and then checks again to see if the channel is clear. This is called the backoff factor and is counted down using a backoff counter.
	+ Carrier Sense: All participants may only send data over the network whenever the transmission medium is idle. CS detection will continue to check the channel and the data will not be sent until the medium is available.
	+ Multiple Access: As numerous stations share a transmission medium, it is vital that all of them adhere to a binding protocol to ensure communication.
	+ Collision Avoidance: Complex schedule that attempts to prevent potential collisions by ensuring that two or more participants do not initiate a transmission at the same time. Whenever overlapping does occur, it will be detected and the process will be repeated.
- Carrier Sense Multiple Access with Collision Detection (CSMA/CD)
	+ Uses carrier-sensing to defer transmissions until no other stations are transmitting. This is used in combination with collision detection in which a transmitting station detects collisions by sensing transmissions from other stations while it is transmitting a frame. The station transmitting that frame, transmits a jam signal and the waits for a random interval before trying to resend the frame. It improves CSMA performance by terminating transmission as soon as collision is detected, thus shortening the time required before a retry can be attempted.
- Demand Priority
	+ An improved version of CSMA/CD, it uses an 'active hub' in regulating how a network is accessed.
	+ Demand priority requires that the network terminals obtain authorization from the active hub before data can be transmitted.
- Token passing
	+ It uses free token passing to prevent a collision. A computer possessing the free token is authorized to transmit. It occurs from a network terminal that has a higher priority than one with a low priority. Each terminal holds this free token for a specific amount of time if the network with the high priority does not have data to transmit, the token is passed to the adjoining station in the network.
	
### Carrier Sense Multiple Access (CSMA)
- Listens to the medium and wait until it is free, wait a random back off time then start talking.
- There are 4 types of CSMA protocols:
	+ 1-Persistent: Senses the shared channel first and delivers the data right awat if the channel is idle, else it must wait and continuously track for the channel to become idle and then broadcast the frame without condition.
	+ Non-persistent: First assesses the channel before transmitting data, if the channel is idle, the node transmits data right away. If not, the station must wait for an arbitrary amount of time and when the channel is empty, send the frames.
	+ P-Persistent: Combination of 1-Persistent and P-Persistent. Each node observes the channel in the P-Persistent mode and if channel is idel it sends a frame with P probability. If data is not transferred, the frame restarts with the following time slot after waiting for a `1-p` random period.
	+ O-Persistent: A supervisory node gives each node a transmission order. Nodes wait for their time slot according to their allocated transmission sequence when the transmission medium is idle.
	
### MAC protocol survey
- Fixed allocation MAC protocol
	- Share a common medium through a pre-determined assignment, providing a bounded delay for each node.
	- In case of bursty traffic, it may lead to inefficient usage of channel as channel requirements of each node may vary overtime.
- Demand based MAC protocol
	+ Has variable rate traffic can be efficiently transmitted, requires the additional overhead of a reservation process.
	+ Used where the channel is allocated according to the demand of the node.
- Contention based MAC protocol.
	+ Uses random access based contention for the channel when packets needs to be transmitted. Collisions and no delay guarantees are not suitable for delay-sensitive or real time traffic. Is suitable for busrty traffic.
	
### Types of survey routing protocols
- Node centric routing protocol
	+ Estimation node is specified with some numeric identifier, eg: Low Energy Adaptive Clustering Hierarchy.
	+ Organizes the cluster such that the energy is equally divided in all the sensors nodes in the network. Cluster head is selected before the whole communication starts. LEACH protocol apply randomization that makes it more long lasting.
- Data centric routing protocol
	+ Focuses on the transmission of information specified by certain attributes. The sink nodes queries to specific regions to collect data, eg: sensor protocols for information via negotiation.
	+ The resource manager in each node monitors its resources and adapts their functionality accordingly.
- Source initiated routing protocol
	+ Route is generated from the source side to the destination, eg: SPIN
- Destination initiated routing protocol
	+ Path setup generation originates from the destination node, eg: Directed diffusion and LEACH.
	
### Types of node discovery

|Node discovery|ND|Seeks to discover all nodes in the network (on the current PAN ID)|
|--------------|--|-----------------------------------------------------------------|
|Directed Node Discovery|ND (NI String)|Seeks to discover if a particular node named (NI String) is found in the network|
|Destination Node|DN (NI String)|Sets *DH/DL* to point to the MAC address of the node whise (NI String) matches.|

----

### Data aggregation
> Process where raw data is gathered and expressed in a summary form for statistical analysis.
- It is the compiling of information from datasets with intent to prepare combined datasets for data processing.
- WSNs consist of large number of small sized sensor nodes, hence to reduce the redundancy in the data we can use data aggregation.

### Data dissemination
> Process by which data and queries for data are routed in the sensor network.
- The node that generates the data is **source** and the node interested in the data is called **sink**.

#### Data gathering
> To transmit data that has been collected by the sensor nodes to the base station.

### Design challenges in developing IoT devices.
- Connectivity
	+ With too many uncertainities and competition trends, the technology we use today might become outdated in near future. As IoT devices have a long life cycle, we must develop a plan to ensure that our device can maintain its connectivity and adapt to new technologies.
- Security and Privacy
	+ Physical security: IoT devices are often located in open fields and are unattended and physically unprotected, hence we must ensure that they aren't tampered with and protect data stored locally on the devices.
	+ Security of data exchange: Encrypted transfer protocols must be used to get and push data to-from the IoT devices. Authentication and Authorization are also a must.
	+ Security of cloud storage: Data once stored in the cloud must remain encrypted.
	+ Updates: The firmware must be regularly updated, to safegaurd it from new methods of malicious tampering. Any vulnerabilities must be patched as well.
- Flexibility and Compatibility
	+ APIs and SDKs should be provided whenever possible to provide flexibility to other developers to add functionality to the IoT devices.
	+ We should also ensure that our devices are compatible with other IoT ecosystems like Samsung's SmartThings, Google's nest, etc.
- Data collection and Processing
	+ The amount of collected and processed data must be evaluated before hadn to control the size of our cloud storage and platform requirements.
	+ We can supplement existing data, analyze and further divide users learning their preferences and enable them to resolve related problems and find opportunities to improve products.
- Data privacy
	+ Regulations like the GDPR, HIPAA, etc must be followed while making our privacy policies.
	+ Explicit consent must be taken from the user to collect data with the consent for processing it. Any data transmitted must be highly encrypted.
- Data volume
	+ The volume of data IoT devices generate makes it hard to store, transmit and process it.