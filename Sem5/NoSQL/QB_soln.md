### What is NoSQL and explain its features?
- NoSQL stands for Not Only SQL.
- NoSQL databases are non-tabular databases and store data differently than relational tables.
- NoSQL databases are built to be flexible, scalable and capable of rapidly responding to the the data management demands.
- NoSQL systems store and retrieve data from many formats like key-value stores, document stores, column-family stores, graph databases.
- We can extract data using simple interfaces without joins.
- NoSQL allow us to store the database on multiple multiple process to mantain high-speed performance. Most systems can leverage low-cost commodity processors. It supports linear scalability.
- NoSQL databases are widely used in real-time web applications and big data, because their main advantages are hih scalability and availability.
### Compare SQL and NoSQL
|SQL|NoSQL|
|:--:|:---:|
|Tables with fixed rows and columns.|Document: JSON documents, Key-Value: key-value pairs, Columnar: rows with Dynamic columns, Graph: nodes and edges.|
|Has a rigid schemas|has felxible schemas|
|Supports vertical scaling|Supports horizontal scaling|
|Requires Joins, ORM|Does not require Joins and most don't require ORMs|
|Supports Multi-Record ACID transactions|Most do not support multi-record ACID transactions|
|Querying data is simpler across databases as they rely on one language|Querying data is a bit more complex as the query language differs from system to system.|
|Examples: MySQL, Google Cloud SQL, RDS, MariaDB, PostgreSQL|Example: MongoDB, BigTable, CouchDB, CassandraDB, Redis|
### Describe in detail different types of NoSQL databases.
|Pattern|Description|Uses|Examples|
|:-----:|:---------:|:--:|:------:|
|Key-Value store|A simple way to associate a large data file with a simple text string|Lookup tables, query cache, image store, dictionary|Redis, Riak, Dynamo DB|
|Graph store|Store nodes and arcs of a graph|Social network queries, friend-of-friend queries, rules systems, pattern matching|Neo4j, Giraffe, AllegroGraph|
|Columnar store|Store sparse matrix data using a row and a column as the key|Web crawling, systems with high variance, high-adaptable systems|BigTable, HBase, Cassandra|
|Document store|Store tree-structured hierarchical information in a single unit|Office documents, sales orders, invoices, forms / web pages, document exchange and search|MongoDB, Couchbase, Berkeley DB XML|
### What is the significance of key-value data store.Explain its operations with example
- A key-value store is a simple database that when presented with a simple string (key) returns an arbitrary large BLOB of data (value).
- It is like a dictionary.
- The benefit of storing the values as BLOB is that we can store any data type we want, as the system will store the value as BLOB and returns the BLOB when a GET request is made.
- Key-value store is flexible and can be represented by many formats:
	+ Logical path names to images or files
	+ Artificially generated strings created from a hash of the value
	+ REST web service calls
	+ SQL queries
- It allows programs or users of programs to retrieve data by keys.
	+ Retrieving a value, Deleting a value, updating values simply using the associated key
- Instead of using a query language, application developers access and manipulate a key-value store with the `put`, `get` and `delete` functions.
	+ `put($key as xs:string, $value as item())` adds a new key-value pair to the table and will update a value if the key is already present.
	+ `get($key as xs:string) as item()` returns the value for any given key, or it may return an error message if there's no key in the key-value store.
	+ `delete($key as xs:string)` removes a key and its value from the table, or it may return an error message if there's no key in the key-value store.
### Compare between document-store, columnar store and key-value store databases
|Document stores|Key-Value stores|Columnar stores|Graph stores|
|:-------------:|:--------------:|:-------------:|:----------:|
A document database stores data in JSON, BSON or XML documents.|Data is stored as key-value pairs consisting of an attribute name(key) and a value.|Data is organized as a set of columns instead of row by row in RDBMS|Each element is stored as a node|
|Used for web content management, high-variability data, document search, etc|Key-based filesystems, object cache, image stores, etc|web crawlers, social media, etc|social networks, fraud detecton, relationship-heavy data, etc|
|Examples: MongoDB, Couchbase, MarkLogic|Examples: Redis, Riak, DynamoDB|Examples: BigTable, Apache HBase and Cassandra|Examples: Neo4j, Apache Giraffe, AllegroGraph|
### What is MongoDB
- MongoDB is a highly scalable and felxible document database.
- Being a distributed database it has high availability, horizontal scaling and geographic distribution built in.
- It supports Ad hoc queries, indexing and real time aggregation to access and analyze our data.
- It stores data in JSON-like documents, hence fields can vary from document to document.
- Has native document validation and schema exploration with compass, with management tooling for automation, monitoring and backup.
### Compare between RDBMS and MongoDB
|RDBMS|MongoDB|
|:---:|:-----:|
|It is vertically scalable|It is horizontally scalable|
|It has a predefined schema|It has dynamic schema|
|It centers around the ACID properties|It centers around CAP theorem|
|It is a relational database|It is a non-relational and document-oriented database|
|Not suitable for hierarchical data storage|Suitable for hierarchical data storage|
|It is row based|It is document-based|
|Supports complex joins|No support for joins|
|Supports only SQL query language|Supports JSON query language along with SQL|
|Does not provide JavaScript client for querying|Provides a JavaScript client for querying|

### Explain CRUD operations of MongoDB with examples
- Creating a database
	+ we can use the `use <database_name>` command to create a database.
	+ `use students_db`
- Creating a collection
	+ `db.createCollection(<collection_name>)` command is used to create a collection
	- `db.createCollection("mycollection")`
- Inserting data
	+ `db.COLLECTION_NAME.insert(<document>)` is used to insert data
	+ `db.mycollection.insert([
	{
	title:"MongoDB",
	description:"MongoDB is a nosql database",
	tags:["mongodb","database","nosql"]
	},
	{
	title:"NoSQL database",
	description:"NoSQL database",
	tags:["nosql","mongodb"],
	likes:200
	}
	]
	)`
	- we can also use the `insertOne()` method when we want to insert only one document
		+ `db.staff.insertOne(
		{
		first_name:"ABC",
		last_name:"XYZ:,
		phone:"123546789",
		DOB:"1969-04-20"`
		})`
- Querying document
	+ `find()` method is used to query data.
	+ `db.collection_name.find()`
		* `db.staff.find()` / `db.staff.find().pretty()`
		* pretty function shows the results in a formatted way
- Updating document
	+ `db.collection_name.update(<selection_criteria>,<updated_data>)`
	+ `db.mycollection.update({'title':'MongoDB'},{$set:{'title':'MongoDB tutorial'}})`
- Dropping a database
	+ `db.dropDatabase()`
- Dropping a collection
	+ `db.collection_name.drop()`
	+ `db.mycollection.drop()`
- Dropping a document
	+ `db.collection_name.remove(selection_criteria)`
	+ `db.mycollection.remove({'title':'MongoDB'})`
	
## Chapter 2
### Explain the concept of database sharding with examples
- Sharding is a method for distributing a single dataset across multiple databases, which can then be stored on nodes, increasing the total capacity of the system, it can also handle more requests than a single machine.
- Sharding is a form of scaling knows as horizontal scaling or scale-out as additional nodes are brought on to share the load.
- Database Sharding can be useful when the database becomes the bottleneck.
- Sharding makes the database smaller, faster and reduces the transaction cost of the database.
- Example:
	+ The full table looks like:
	- <img src="Screenshot from 2022-08-10 21-12-22.png"/>
	+ After sharding one shard looks like:
	+ <img src="Screenshot from 2022-08-10 21-13-44.png"/>
	+ And the second shard looks like:
	+ <img src="Screenshot from 2022-08-10 21-14-43.png"/>
- Common methods of sharding
	+ Range sharding
		* examines the values of the sharding key and determines what range it falls into. Each key is directly mapped to a different shard.
		* Eg: If the sharding key used is `userID` then records from 1 to 10000 will be in shard1, 10001 to 20000 will be in shard2, 20001 to 30000 in shard3 and so on.
	+ Hash sharding
		* Here we apply a hashing function to the sharding key. A hash function transforms one or more data points to a new value that lies within a fixed-size range. The size of the range is equal to the number of shards.
	+ Directory based sharding
		* Similar items are gropued together and placed in the same shard.
	+ Geographic based sharding
		* It is a specific type of directory based sharding, where data is divided amongst the shards based on the location of the entity.
- Pros of sharding:
	+ It improves the performance. Based on sharding key, the database system immediately knows which shard contains the data.
	+ Additional computing capacity can be added with no downtime. It increases the data storage capacity and the total resources available to the database.
	+ It can be more cost efficient to run multiple servers than one mega server.
	+ Sharding can simplify upgrades, allowing one server to be upgraded at a time.
- Cons
	+ Sharding greatly increases the complexity of a software development project. Additional logic is required to shard the database and properly direct queries to the correct shard. This increases development time and cost. A elaborate network mesh is necessart often, which leads to an increase in lab & infrastructure cost.
	+ Latency can be higher with a sharded database design.
	+ SQl join operations affecting multiple shards are more difficult to execute and take longer to complete. Some operations might become too slow to be feasible.
	+ Sharding requires a lot of tuning and tweaking as the database grows. Sometimes we need to reconsider the entire sharding strategy and database design, else the distribution can becomes lopsided easily.
	+ Poor sharding keys or method can affect performance or data distribution. This causes some shards to be overloaded while others are almost empty, leading to hotspots and inefficiencies.
	+ It is more challenging to change the database schema after sharding is implemented. It is also difficult to convert the database back to its pre-sharded state.
	+ Shard failures can cause cross-shard inconsistencies and other failures.
	+ Backup and replication tasks are more difficult with a sharded database.

### Explain CAP theorem.
- A distributed system is a network that stores data on more than one node at the same time.
- CAP theorem says that a distributed system can deliver only 2 of three desired characteristics: **consistency**, **availability** and **partition tolerance**.
- Consistency: It means that all clients see the same data at the same time, no matter which node they connect to. Whenever data is written to one node, it must be instantly forwarded or replicated to all the other nodes in the system before the write is deemed successful
- Availability: It means that any cient making a request for data gets a response, even if one or more nodes are down. Basically all working ndes in the system must return a valid response for any request.
- Partition tolerance: A partition is a communications break within a distributed system a lost or temporarily delayed connection between two nodes. Partition tolerance means that the cluster must continue to work despite any number of communicaion breakdowns between nodes in the system.
- NoSQL databases are classified on two CAP chracteristics
	+ CP: Delivers Consistency and Partition tolerance at the expense of availability. When a partition occurs between any two nodes, the system has to shut down the non-consistent node (i.e., make it unavailable) until the partition is resolved.
	+ AP: Delivers availability and partition tolerance at the expense of consistency. When a partition occurs, all nodes remain available but those at the wrong end of a partition might return an older version of data than others. (When the partition is resolved, the AP databases typically resync the nodes to repair all inconsistencies in the system.)
	+ CA: Delivers consistency and availability across all nodes. It can’t do this if there is a partition between any two nodes in the system, however, and therefore can’t deliver fault tolerance.
### Write a short note on DynamoDB
- Amazon DynamoDB is a fully managed, proprietary, serverless, key-value NoSQL database designed to run high-performance applications at any scale. It offers built-in security, continuous backups, automated multi-region replication, in memory-caching and data export tools.
- A dynamodb table features items that have attributes, some of which form a primary key, DynamoDB items are schema-less.
- In a relational model indices serve as a helper to supplement the table. In DynamoDB there is no query optimizer and an index is simply another table with a different key that sits beside the original.
- DynamoDB uses JSON for its syntax because of its ubiquity.
- It uses hashing and B-trees to manage data.Upon entry, data is first distributed into different partitions by hashing on the partition key.
- While a typical relational system would convert the SQL query to relational algebra and run optimization algorithms, dynamodb skips both processes. The query arrives at the request router, the system hashes the request's partition key to arrive in the appropriate partition. There are three nodes within, each with a copy of the partition's data. The system first writes to the leader node, then writes to a second node then sends a success message and finally continues propagating to the third node. Writes are consistent because they always travel first through the leader node.
### Enlist and contrast key architectural characteristics of DynamoDB.
- DynamoDB runs on a fleet of AWS managed servers that leverage solid state drives (SSDs) to create an optimized, high-density storage platform. This platform decouples performance from table size and eliminates the need for the working set of data to fit in memory while still returning consistent, low latency responses to queries. As a managed service, DynamoDB abstracts its underlying architectural details from the user.
- <img src="Screenshot from 2022-08-10 23-20-12.png"/>
- Dynamo stores objects associated with a key through a simple interface, it exposes two operations `get()` and `put()`.
- Dynamo scales incrementally. This requires a mechanism to dynamically partition the data over the set of nodes. The partioning scheme relies on consistent hashing to distribute the load across multiple storage hosts.
- To achieve high availability and durability, dynamo replicates its data on multiple hosts. Each data item is replicated at *N* hosts, where *N* is a parameter configured per instance.
- Dynamo provides eventual consistency, which allows for updates to be propagated to all replicas asynchronously. Dynamo treats the result of each modification as a new and immutable version of the data. It allows for multiple versions of an object to be present in the system at the same time.
- Pros:
	+ Simple to setup
	+ Streams: Supports streams, allowing other systems to react to data changes.
	+ Time-to-live: A built-in feature os the system and can replace a lot of use-cases that would normally require something like redis.
- Cons:
	+ Weak querying model: If we don't know the access patterns, then it becomes difficult to build an ad-hoc querying system like RDBMS or MongoDB.
	+ Lack of server-side updates: Making change against a bulk set of records, eg: going from a `full_name` field to `first_name` and `last_name` fields must be updated on each record individually.
	+ Provisioned throughput and batch jobs don't work well together: If we are runnign any recurring batch processes that do a large amount of read/writes in a short amount of time, the normal throughput levels will likely lead to throttled reads or write errors.
