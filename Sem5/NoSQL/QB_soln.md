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
### What is the significance of key-value data store
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