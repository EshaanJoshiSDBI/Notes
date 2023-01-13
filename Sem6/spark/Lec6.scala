object Lec5
{
    def main(args: Array[String]): Unit=
    {
        val inp = scala.io.StdIn.readInt();
        var cnt = inp
        for(i <- 1 to inp)
        {
            for( ii <- 1 to i)
            {
                print(ii)
            }
            print('\n')
        }
        println("------------------------")
        for(i <- inp to 1 by -1)
        {
            for(ii <- i to 1 by -1)
            {
                print(ii)
            }
            print('\n')
        }
        println("-----------------")
        for(i <- 0 until inp)
        {
            print(' '.toString()*cnt)
            cnt = cnt-1
            for(ii <- i+1 to 1 by -1)
            {
                print(ii)
            }
            print('\n')
        }
        // println("Enter the number")
        // val inp = scala.io.StdIn.readLine();
        // var ls = inp.toString.map(_.asDigit);
        // val temp = ls.filter(s=> s%2==0)
        // print(temp)
    }
}