// import scala.collection.mutable.ListBuffer

// scala> var fruits = new ListBuffer[String]()
// fruits: scala.collection.mutable.ListBuffer[String] = ListBuffer()
object Lec5
{
    def main(args: Array[String]): Unit=
    {
        print("Enter the range's start: ");
        val start = scala.io.StdIn.readInt();
        print("Enter the range's end: ");
        val end = scala.io.StdIn.readInt();
        def check_armstrong(start:Int,end:Int):scala.collection.mutable.ListBuffer[Int]={
            // var ls = num.toList;
            // ls = ls.map(i => i.toInt);
            var rng = List.range(start, end);
            // println(rng)
            var res = new scala.collection.mutable.ListBuffer[Int]();
            var n_res = new scala.collection.mutable.ListBuffer[Int]();
            for(num <- rng){
                var ls = num.toString.map(_.asDigit);
            // println(ls)
                val cube_ls = ls.map(i => i*i*i);
                if (num.toInt == cube_ls.sum){
                    res += num
                }
                else{
                    n_res += num
                    // println(None)
                }
        }
        return res
        }
        val res = check_armstrong(start,end);
        println(res)
    }
}