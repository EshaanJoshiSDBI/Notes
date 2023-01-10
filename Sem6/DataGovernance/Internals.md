#### What is data governance?
- It is a collection of processes, roles, policies, standards and metrics that ensures effective and efficient use of information in enabling an organization to achieve its goals.
- Securing data
- Organizing data
- Defining access permissions
- Vital to avoid data breaches

#### What is information security
- Information security means protecting information and information systems from unauthorized access, use, disclosure in order to provide confidentiality, integrity and availability.
- Information security process, services and mechanisms deal with measures to deter, prevent and correct security violations that involves system that process, store and transmit information.
- Examples: Unauthorized disclosure, modification of data.
- Information security is the key enabler of business partnership, national security, etc.

##### Need
- Needs
	+ No longer discretionary for enterprises
	+ Business needs for secure applications and services
	+ Internet and extranet security
	+ Emerging legal and regulatory drivers
	+ Cost reduction
	
#### Adversaries
- Professional hackers
- Disgruntled employees
- Industrial spies
- Terrorists
- Journalists
- Criminals
- Competitors

#### Confidentiality Integrity Availability (CIA)
- Confidentiality
	+ Protection of information from unauthorized disclosure.
	+ Loss of confidentiality can result in: disclosure of information protected by laws, loss of public confidence, loss of competitive advantage, legal action against the enterprise, interference with national security.
	+ Methods of control: access controls, file permissions, encryption
- Integrity
	+ The accuracy and completeness of information in accordance with business values and expectations.
	+ Loss of integrity can result in: Inaccuracy, erroneous decisions, fraud
	+ Methods of control: Access controls, logging, digital signatures, hashes
- Availability
	+ The ability to access information and resources required by the business process.
	+ Loss of availability can result in: Loss of functionality and operational effectiveness, loss of productive time, interference with enterprise's objectives.
	+ Methods of control: Redundancy, backups, access controls.
	
#### Access control
- It is the combination of policies and tech that decides which authenticated users may access which resources.
- It is the security features that control how users and systems communicate and interact with one another.
- Access: The flow of information between the subject and object.
- Subject: An active entity that requests access to an object or the data in an object.
- Object: A passive entity that contains information.
- Access control policies should support CIA triad.
- Components
	+ Identification: Identifying users uniquels.
	+ Authentication: Verifying the identificaton information, eg: passwords.
	+ Authorization: After successful authentication, authorizing the appropriate permissions.
	+ Accountability: Audit log and monitoring to track.
- Access control models:
	+ Mandatory Access Control (MAC)
		* You define the sensitivity of the resource by means of a security label, which is composed of a security level which indicates hierarchical classification of information and one or more categories which define the groups to which the information belongs.
		* Users can access only the information in a resource to which their security labels entitle them.
		* Advantages: Enforceability, Compartmentalization
		* Disadvantages: Collaboration, management burden
	+ Discretionary Access Control (DAC)
		* The owner determines object access privileges, this model is managed through an access control list (ACL) which includes a list of users with their access levels.
		* Advantages: Conceptual simplicity, responsiveness to business needs.
		* Disadvantages: Limited control, compromised security.
	+ Role-Based Access Control (RBAC)
		* System administrators must assign access based on organizational roles. An individual only has access to what is needed to do their job and nothing more.
		* Advantages: Flexibility, ease of maintenance, lower risk exposure.
		* Disadvantages: Complex deployment, balancing security with simplicity, layered roles and permissions.
	+ Privileged Access Control (PAM)

#### Non repudiation
- It provides an assurance that the sender of data is provided with proof of delivery and the recipient is provided with proof of the sender's identity, so neither can later deny having processed the data.
- Used to prevent any one of the entities involved in an information transactions from denying involvement in all or part of the activity.
- Methods
	+ Digital signatures
- Types of non-repudiation services:
	+ Origin of non repudiation
	+ to prevent a sender from denying that the message was sent
	+ to prevent a recipient from denying that the message was received.
	+ Proof of submission
	+ Proof of delivery
	
#### Biometrics
- Automatic identification of a person based on their physiological or behavioural characteristics.
- Recognition, Identification, Verification
- Types
	+ Physiological
		* Face
			- Capture image, find the face, extract features, compare templates, declare matches
		* Fingerprint
			- includes small rideges, space between two divergent ridges, spurs, bridges.
		* Hand
			- measuring many dimensions of a hand
		* Iris
			- measuring the iris pattern in the coloured part of the eye.
		* DNA
	+ Behavioural
		* Keystroke
			- examining the individual's keystrokes on a keyboard. Examining the speed, pressure and total time taken to type particular words.
		* Signature
			- Examining the speed, direction and pressure while the person writes their signature.
		* Voice
			- Using vocal characteristics to individuals using a passphrase.
- Advantages
	+ Effective technique to enhacne security
	+ Does not use any password, pin, etc that can be compromised
	+ Long lasting performance, because traits are permanence in nature
	+ Difficult to fool biometrics system.
- Disadvantages
	+ Iris scanning requires closed physical contact of scanning device which may not be convinient for everyone.
	+ Costly
	+ Voice recognition requires large amount of computer storage, people's voice can change, background noise can interfere, etc.
	+ Biometric features may change over time
	
	
#### Authentication
- The act of confirming the truth of an attribute of a datum or entity.
- This might involve confirming the identity of a person or a software program.
- Involves verifying the validity of at least one form of identification.
- Types
	+ Password based authentication
		* Simplest and cheapest form of authentication, but also the weakest.
	+ Certificate based authentication
		* A digital document that at minimum includes a distnguished name (DN) and an associate public key. It is digitally signed by a trusted 3rd party known as Certificate Authority(CA).
		* The document contains information on: the entity it belongs to, entity it was issued by, unique identification, valid dates, digital fingerprint.
		* the digital certificate is created and stored, a login request creates a random challenge, user signs the random challenge, server returns an appropriate message.
	+ E-token based authentication
		* A small device that generates a new random value every time it is used, which becomes the basis for authentication. Can be implemented on a USB key, smart card, etc.
		* Steps: Creation of toke, use of token, token validation.
	+ Biometric based authentication
		* Using human characterisitcs like fingerprint, Iris, voice, etc.
		
#### Threats
- Threats are the people eager, willing and qualified to take advantage of the security vulnerability and continue research for new exploit and weaknesses.
- Classes of threats
	+ Structured threats
		* Implemented by a technically skilled person who is trying to gain access to our network
	+ Unstructured threats
		* Created by an inexperienced or non technical person was trying to gain access to our network
	+ External threats
		* Occurs when someone from outside our network creates a security threat to our network
	+ Internal threats
		* Occurs when someone from inside our network creates a security threat to our network.
		

#### Vulnerabilities
- A vulnerability is a weakness that allows an attacker to reduce a system information assurance.
- Primary vulnerabilities
	+ Technology vulnerabilities
		* TCP/IP protocol vulnerabilities
		* OS vulnerabilities
		* Network equipment vulnerabilities
	+ Configuration vulnerabilities
		* Network administrators have to correctly configure the computing and network devices to compensate.
		* System account with easily guessed passwords
		* Misconfigured internet settings like: untrusted sites and dynamic web pages, misconfigured network equipment
	+ Security policy vulnerabilities
		* lack of written security policy
		* lack of continuity
		* Disaster recovery plan non-existent
		
#### Malware
- Malware is malicious software that gets installed in your device and performs unwanted tasks.
- Mainly designed to transmit our data/information to third party
- Types
	+ Virus
		* Vital Information Resource Under Seige
		* Software that replicates itself by modifying other computer programs and inserting its own code.
		* Enters our systems via images, audio, applications, etc.
	+ Trojan horse
		* Malware that looks legitimate, it contains other malware.
	+ Spyware
		* It is a program that aims to gather information about a person or organization and send it to other entity in a way that harms the user, eg: violating their privacy.
	+ Adware
		* Also called advertising-supported software, generated revenue by automatically generating online advertisements in the user interface.
	+ Worms
		* Malicious programs that replicates itself in order to deplete a system's resources by overloading a shared network, deplete storage space, consume bandwidth.
	+ Rats
		* Remote Access Trojans
		* It infects your computer with the intent to change, monitor, record or control your computer through your internet connection.
	+ Scareware
		* A malware tactic that manipulates users into believing they need to download or buy malicious / useless software.
	+ Ransomware
		* Malware that threatens to publish the victim's data / permanently block access to it unless a ransom is paid off.
		
#### Antivirus software
- It is a computer program used to prevent, detect and remove malware.
- It searches the storage devices for any known malwares.
- It runs in the RAM of a computer.
- Two techniques
	+ Examining files to look for known viruses by means of virus dictionary.
	+ Identifying suspicious behaviour from any computer program might indicate
- Types of antivirus for different computers
	+ Designed for personal computers
	+ Designed for servers
- Working
	- Antivirus applications made in a database of known viruses and compare the scanned files that match the characteristics of known viruses
	- If scanned files matches those characteristics of known viruses, it is quarantined(moved to a new, presumably safe location on disk and renamed) so that it cannot affect other files on your system.
	- Signature detection is just one way identifying viruses and is only effective if the virus database is up to date and contains the signature of a virus.
	- Anti-virus programs also attempt to identify suspicious behaviour include an application attempting to write an executable file, ordering needed system files, making suspicious registry entries for adding to the list of items that execute automatically upon system startup.
	- Once the file is quarantined, the application can attempt to repair it, delete it, or from due for a discussion on what to do about the file infected.
	- This approach helps protect against unidentified or encrypted viruses and can alert you to suspicious behaviour happening on your computer.
	- This inspecting is an area where anti spyware and antivirus software often notice the same kind of activities, because they are typically for adware and spyware as well as malware.

#### Security attacks
- Types
	+ Techno crime
		* Premeditated act against a system with the intent to copy, steal, prevent access, corrupt, deface, damage parts of computer system.
	+ Techno vandalism
		* Acts of brainless defacement of websites or other activities such as copyright files, publicizing their contents publically, etc.
- Phishing: Using email lures to fish for passwords / financial data.
- Spamming: Using messaging systems to send multiple messages to large number of people for the purpose of advertising or prohibited purposes.
- Computer sabotage: Use of internet to hinder the normal functioning of computer system through the introduction of malware.
- Password sniffing: Programs that monitor and record the name and password of network user as they login.
- Intellectual Property Crime: Piracy, copyright violation, trademark violation, theft of computer source code.
- Unauthorized access of computer:
- Denial of service: Attempt to make computer/network resources unavailable to its intended users.
- Industrial spying/espionage: Damage the company image, take away a company's advantage.

#### Encryption and Decryption
- Encryption is the process by which a readable message is converted to an unreadable form to prevent unauthorized parties from reading it. The encrypted message is called the ciphertext message.
- Types of encryption
	+ Symmetric
		* Block ciphers: Plain text breaks down into fixed-length groups of bits known as blocks. Each block then gets encrypted as a unit, which makes this process a bit slow.
		* Stream ciphers: It encrypts plaintext data one bit at a time. The data gets processed in a stream rather than in chunks like in block ciphers. This makes the process less resource intensive and faster to achieve.
		* Algorithms
			- Data Encryption Standard
	+ Assymetric
- Decryption is the process of converting an encrypted message back to its original format. The original message is called the plaintext message.

----

- Hacker: A hacker is a person intensely interested in acquiring secrets and wreking the working of any computer OS, hackers are most often programmers.
- Cracker: Can easily be identified because their actions are malicious.
- Phreaker: An individual manipulate the phone network to cause it to perform a function that is normally not allowed.
- Spammer: An individual who sends a large number of unsolicited e-mails/ messages.
- Phisher: A phisher uses email or other means in an attempt to trick others into providing sensitive information such as passwords.
- White hat: Individuals who use their abilities to find vulnerabilities in systems and report/fix them.
- Black hat: Individuals who use thier knowledge of computer to break into a system that are not authorised to use.