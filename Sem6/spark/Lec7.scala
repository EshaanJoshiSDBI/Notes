import scala.collection.mutable.ListBuffer
object Lec8
{
    def main(args: Array[String]): Unit=
    {
        println("Enter the first number")
        val num1 = scala.io.StdIn.readInt()
        println("Enter the second number")
        val num2 = scala.io.StdIn.readInt()
        val prev = Calendar
        // var fact1 = new ListBuffer[Int]()
        // var fact2 = new ListBuffer[Int]()
        var fact1 = for (i <- 1 until num1 if num1%i == 0) yield i
        var fact2 = for (i <- 1 until num2 if num2%i == 0) yield i
        // for(i <- 1 until num1)
        // {
        //     if(num1%i == 0)
        //     {
        //         fact1 += i
        //     }
        // }
        // for(i <- 1 until num2)
        // {
        //     if(num2%i == 0)
        //     {
        //         fact2 += i
        //     }
        // }
        val sum1 = fact1.sum
        val sum2 = fact2.sum
        // print(fact1)
        // println(sum1)
        // print(fact2)
        // println(sum2)
        // if(num1==sum2)
        // {
        //     if(num2==sum1)
        //     {
        //         println("It is an amicable")
        //     }
        //     else
        //     {
        //         println("Not an amicable")
        //     }
        // }
        // else
        // {
        //     println("Not an amicable")
        // }
        if((num1==sum2) && (num2==sum1))
        {
            println("They are amicable")
        }
        else
        {
            println("Not an amicable")
        }
    }
}