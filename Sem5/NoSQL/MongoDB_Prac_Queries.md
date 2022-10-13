`db.orders.aggregate([{$group:{_id:'$City','Total Orders':{$count:'order_loc'}}}])`

`db.orders.aggregate([{$group:{_id:'$order_loc','Total Orders':{$count:{}}}},{$match:{'Total Orders':{$gte:5}}}])`

`db.Cash.aggregate([{$group:{_id:'State',Total_Cash:{$sum:'Cash'}}}])`

## sort
`db.Cash.find().sort({'first_name':1})`
`db.Cash.find().sort({'first_name':-1})`

## count
`db.Cash.countDocuments()`
`db.Cash.find({city:'Dacun'}).count()`

## ne
`db.Cash.find(City:{$ne:'Dacun'}).count()`

## update and $inc
`db.Cash.updateMany({},{$inc:{Cash:1000}})`
### add new field
`db.Cash.updateMany({},{$set:{'new_field':'temp'}})`
### Renaming fields
`db.Cash.updateMany({},{$rename:{'new_field':'temp_field'}})`
### Remove a field
`db.Cash.updateMany({},{$unset:{temp_field:1}})`

## AND / OR
`db.Cash.find({$and:[{Cash:{$gte:2500}},{City:{$in:['Dacuna','Oslo','Oji']}}]})`

## Distinct
`db.Cash.distinct('State')`

---

```
db.emp.update({Emp_gender:'F'},{$set:{Emp_location':'USA'}},{'multi':True});
db.emp.update({},{$set:{'Company':'LCF'}});
db.emp.remove({'age':{$lt:18}}});
db.emp.countDocuments();
db.emp.find({"Emp_gender":"M"},{Emp_first_name:1,Emp_age:1});
```