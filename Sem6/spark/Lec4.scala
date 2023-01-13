object Lec4
{
    def main(args: Array[String]): Unit=
    {
    //     println("Enter the weekday's  number");
    //     var x = scala.io.StdIn.readInt();
    //     def matchTest(opr:Int) = opr match{
    //     case 1 => println("Sunday")
    //     case 2 => println("Monday")
    //     case 3 => println("Tuesday")
    //     case 4 => println("Wednesday")
    //     case 5 => println("Thursday")
    //     case 6 => println("Friday")
    //     case 7 => println("Saturday")
    //     case _ => println("Invalid weekday number")
    // }
    // matchTest(x);
    // for (n <- 1 to 10){
    //     println(n)
    // }
    // println("_-----------------------")
    // for (n <- 1 until 10){
    //     println(n)
    // }
    // println("Enter the first number");
    // var x = scala.io.StdIn.readInt();
    // println("Enter the second number");
    // var y = scala.io.StdIn.readInt();
    // def table(x:Int,y:Int)={
    //     for (i <- 1 to y){
    //         println(s"$x * $i = ${x*i}")
    //     }
    // }
    // table(x,y)
    // var ls = Array(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29)
    // for (i <- 0 until ls.length){
    //     println(ls(i))
    // }
    // ls.foreach(println)
    // <array_name>.foreach(<function name>)
    var ls = List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50);
    println(ls)
    def div3(num:Int):Int={
        if (num % 3 == 0){
            return(num)
        }
    }
    var res = List(ls.foreach(div3))
    println(res)
    // val res = div3(3)
    // println(res)
    // ls.foreach(div3(_))
    // for (i <- ls){
    //     if(i % 3 == 0){
    //         println(i)
    //     }
    // }
    
}

}