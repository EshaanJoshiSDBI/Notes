object HelloWorld 
{
  def main(args: Array[String]): Unit = 
    {
    // println("Enter the first number");
    // val inp1 = scala.io.StdIn.readInt();
    // println("Enter the second number");
    // val inp2 = scala.io.StdIn.readInt();
    // val res = inp1 + inp2;
    // printf(s"The sum of $inp1 and $inp2 is: $res\n");
    // println(inp1>inp2);
    // println(inp1<inp2);
    // println(inp1 == inp2);
    // println(inp1 != inp2);
    // def add_5(x:Int):Int = x+5;
    // println(add_5(7));
    // def sqr(x:Int):Int = x*x;
    // println(sqr(69));
    // def matchTest(opr:String) = opr match{
    //     case "+" => inp1 + inp2 + inp3
    //     case "-" => inp1 - inp2 - inp3
    //     case "/" => (inp1/inp2)/inp3
    //     case "*" => inp1*inp2*inp3
    // }
    // def usr_req():Int=
    //     {
    //         def matchTest(opr:String,inp1:Int,inp2:Int,inp3:Int) = opr match{
    //             case "+" => inp1 + inp2 + inp3
    //             case "-" => inp1 - inp2 - inp3
    //             case "/" => (inp1/inp2)/inp3
    //             case "*" => inp1*inp2*inp3
    //         }
    //         println("Enter the first number");
    //         var inp1 = scala.io.StdIn.readInt();
    //         println("Enter the second number");
    //         var inp2 = scala.io.StdIn.readInt();
    //         println("Enter the third number");
    //         var inp3 = scala.io.StdIn.readInt();
    //         println("Enter the operator");
    //         var opr = scala.io.StdIn.readLine();
    //         // return inp1*inp2*inp3
    //         matchTest(opr,inp1,inp2,inp3)
    //     }
    // println(usr_req());
    def check_max():Int={
      println("Enter the first number");
      var inp1:Int = scala.io.StdIn.readInt();
      println("Enter the second number");
      var inp2:Int = scala.io.StdIn.readInt();
      println("Enter the third number");
      var inp3:Int = scala.io.StdIn.readInt();
      if(inp1>inp2){
        if(inp1>inp3){
            return inp1
        }
        else if(inp3>inp1){
            return inp3
        }
    else if(inp2>inp3){
        return inp2
    }
    else{
        return inp3
    }
      }
    }
}
}