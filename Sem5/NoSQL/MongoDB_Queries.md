# MongoDB Queries
## Create a database
- use "db_name"
```
use bscv
```

## Create a collection
- db.createCollection("collection_name")
```
use.bscv.createCollection('Cash')
```

## Retrieve data
- db."collection_name".find()
```
db.Cash.find()
OR
db.Cash.find().pretty()
```

## Retrieve data with filters
- db."collection_name".find({criterion})
```
db.Cash.find({cash:1500}) // This query will return all the objects with cash equal to 3.5
db.Cash.find({cash:{$gte:1350}}) // This query will return all the objects with cash greater than or equal to 1350. Use $gt for greater than
db.Cash.find({cash:{$lt:1200}}) // This query will return all objects with cash less than 1200. Use $lte for less than equal to
```

### AND operator
- Using multiple filters
```
db.Cash.find({cash:{$gt:1500},age:{$lte:25}})
```

### OR operator
```
db.Cash.find({$or:[{cash:{$gt:1500}},{)