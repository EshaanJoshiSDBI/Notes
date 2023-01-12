## Fill in the blanks
1. A __literal__ is data that appears directly in the source code, like the number 100, the character I, and the text "Welcome to scala".
2. A __value__ can be assigned with data when it is defined, but can never be reassigned.
3. **Functions** are first-class values in Scala.
4. Scala compiler can do **type inference** on types based on evaluation of the right-hand side.
5. Method ceil is a pure function from **math** package.
6. A **Regular expression** is a string of characters and punctuation that represents a search pattern.
7. The **Unit** type is unlike the other core types here (numeric and nonnumeric) in the denoting a type of data it denotes the lack of data.
8. **Expression** is a single unit of code that returns a value.
9. A **statement** is a single unit of code that doesn't return a value.
10. **Currying** a cleaner way to partially apply functions is to use functions with multiple parameter lists.

## Write syntax
- To create immutable objects
`val x: Int = 1`

- Create function with void return type
```
def greeting(name:String):Unit={
println("Welcome"+name)}
```

- To create collection of unique values
`val fruit = Set("banana","pineapple","apple","mango")`

- To create list with lazy computation
`lazy val fruit:List[String] = List("banana","pineapple","apple","mango")`

- To inherit a class with parent class
```
class deez{
//code block
}
class nuts extends deez{
// code block}
```

## Q&A

#### Explain scala features in brief
- Type inference
	+ We don't have to necessarily declare types of every variable, scala compiler can do type inference on types based on evaluation of the right-hand side value.
- Immutability
	+ Using the `val` keyword, we can create objects that can't be changed by other functions or reassigned.
	+ Basically the variable becomes read-only.
- Lazy computation
	+ Helps with dealing with values we don't want to be evaluated until they're referenced.
	+ A variable marked as lazy won't be evaluated where it is defined, it will only be evaluated when it's referenced. This can be helpful when evaluating a value might be an expensive computation and it not always needed.
- Case classes & pattern matching
	+ Pattern matching helps us check whether a variable matches upto certain criteria.
```
val x:Int = 2
x match{
case 0 => "zero"
case 1 => "one"
case 2 => "two"
case _ => "other"
}
```
	+ keyword `new` was not used to instantiate the book case class. because case classes have an apply method by default which takes care of object contruction. Case classes are regular classess which are immutable by default and decomposable through pattern matching.
- String interpolation
	+ Helps in creating strings by embeding variable references directly in processed string literals.
```
val x = 123
val y = 234
println(s"The sum of $x and $y ="+(x+y))
// f allows the creation of simple formatted strings, the variable references should be followed by a format string like %d, %s.
println(f"The sum of $x%d and $y%d ="+(x+y))
// raw interpolator performs no escaping of literals within the string
println(raw"The sum of $x /n $y ="+(x+y))
```
- Higher-Order functions
- Currying
	+ Provides a way for working with functions that take multiple arguments and using them in frameworks where functions might take only one argument.
- Extensive collection

## Coding problems

#### Write a scala program to reverse a given list
```
val fruit:List[String] = List("banana","pineapple","apple","mango")
println(fruit.reverse)
```

#### Write an expression to print the numbers from 1 to 100, except that for multiples of 3, print"type" and for multiples of 5, print "safe". For multiples of both 3 and 5, print "typesafe".

```
for (i <- 1 to 100){
i match{
case x if x % 15 == 0 => println("typesafe")
case x if x % 3 == 0 => println("type")
case x if x % 5 == 0 => println("safe")
case x => println(x)
}
}
```

#### Write an expression to print

```
     5
    45
   345
  2345
 12345
```

```
var cnt = 4
for (i <- 5 to 1 by -1){
	print(" ".toString()*cnt)
	for (ii <- i to 5){
		print(ii)
	}
	print("\n")
	cnt = cnt -1 
}