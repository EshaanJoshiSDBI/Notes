- It is important to store data for future use. However, not all data is available.
- Same data are occassionaly accessed while some are frequently.
- Inactive data that has a long form retention period needs to be stored in cold storage is called amazon glacier.
- Amazon glacier
	- Highly scalable
	- Secure
	- Durable
- form of storage that isn't heavy on pockets
- Not only does it store the data but also lets one retrieve.
- Can be used as an archive
.
|S3|S3 Glacier|
|::|:-----:|
|Retrievel speed is 5-12 hrs for bulk|48 hrs for bulk|
|4-5 hrs for standard|12 hours for standard|
|Storage price: $0.004 / GB|Storage price: $0.00099 / GB|
|Fee for eearly deletion is 90days| Fee for early deletion is 180 days|
|First byte latency select minute or hours|Select hours|

- Use cases for Glacier
	- Storing and retrieving media files
	- Disaster recovery planning

- Storing and retrieving media files: Large scale movies can be stored for long term purposes
- Disaster recovery planning: Service lets you store a backup and restore it
- Data libraries: Checks data integrity of files regularly.
