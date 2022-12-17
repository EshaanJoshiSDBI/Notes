object HelloWorld {
  def main(args: Array[String]): Unit = {
    println("Enter the first operand");
    val inp1 = scala.io.StdIn.readDouble();
    println("Enter the second operand");
    val inp2 = scala.io.StdIn.readDouble();
    println("Enter the operation");
    val opr = scala.io.StdIn.readLine();
    def matchTest(opr:String) = opr match{
        case "+" => inp1 + inp2
        case "-" => inp1 - inp2
        case "/" => inp1/inp2
        case "*" => inp1*inp2
    }
    var res = matchTest(opr)
    println(res)
  }
}