object test
{
    def main(args: Array[String]): Unit=
{
    def ques2(num:Int):Unit=
                    {
                        var cnt = num-1;
                        for(i <- num to 1 by -1)
                        {
                            print(' '.toString()*cnt)
                            cnt = cnt - 1
                            for(ii <- num to i by -1)
                            {
                                print(ii)
                            }
                            print('\n')
                        }
                    }
                    ques2(5)
    }
}