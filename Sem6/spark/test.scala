object test
{
    def main(args: Array[String]): Unit=
        {
            def ques1(num:Int):Unit={val feb:Stream[Long]={
            def tail(h:Long,n:Long): Stream[Long]=h #:: tail(n,h+n)
            tail(0,1)
            }
            println(feb take num mkString " ")}
            ques1(10)
            println('-'.toString()*35)
            def ques2(num:Int):Unit=
                {
                    var cnt = num-1;
                    for(i <- 1 to num)
                    {
                        print(' '.toString()*cnt)
                        cnt = cnt - 1
                        for(ii <- 1 to i)
                        {
                            print(ii)
                        }
                        print('\n')
                    }
                }
                ques2(5)
                println('-'.toString()*35)
                def ques3(num:Int):Unit=
                    {
                        var cnt = 0;
                        for(i <- num to 1 by -1)
                        {
                            print(' '.toString()*cnt);
                            cnt = cnt + 1;
                            for(ii <- i to 1 by -1)
                            {
                                print(ii)
                            }
                            print('\n')
                        }
                    }
                ques3(5)
        }
}