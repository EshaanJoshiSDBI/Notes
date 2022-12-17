object Lec3
{
    def main(args: Array[String]): Unit=
    {
        // println("Enter the number to be checked")
        // var num = scala.io.StdIn.readInt()
        // if(num==0)
        // {
        //     println("Zero is neutral");
        // }
        // else if(num<0)
        // {
        //     println(s"$num is a negative number");
        // }
        // else
        //     {
        //         println(s"$num is a positive number");
        //     }
        // def check_max():Int=
        //     {
        //         println("Enter the first number")
        //         var S1 = scala.io.StdIn.readInt()
        //         println("Enter the second number")
        //         var S2 = scala.io.StdIn.readInt()
        //         println("Enter the third number")
        //         var S3 = scala.io.StdIn.readInt()
        //         // var max_val = if(inp1>=inp2 && inp1>inp3) inp1 else if(inp2 >= inp1 && inp2 > inp3) inp2 else inp3
        //         if((S1>=60) && (S3 >= 60) &&(S4>60))
        //         {
        //             if(((S1+S2+S3)/3) >= 75)
        //             {
        //                 println("Pass")
        //             }
        //         }
        //         return (max_val)
        //     }
        // var max_val = check_max();
        // println(max_val);
                println("Enter the first number")
                var S1 = scala.io.StdIn.readInt()
                println("Enter the second number")
                var S2 = scala.io.StdIn.readInt()
                println("Enter the third number")
                var S3 = scala.io.StdIn.readInt()
                val sum = S1+S2+S3
                // var max_val = if(inp1>=inp2 && inp1>inp3) inp1 else if(inp2 >= inp1 && inp2 > inp3) inp2 else inp3
                if(sum>=180)
                {
                    if((sum/3) >= 75)
                    {
                        println("Pass")
                    }
                    else
                        {
                            println("Average not greater than 75, hence failed")
                        }
                }
                else
                    {
                        println("Failed")
                    }
    }
}