object Lec69{
    def main(args: Array[String]): Unit=
    {
        println("Enter the month")
        var mnth = scala.io.StdIn.readLine()
        println("Enter the year")
        var year = scala.io.StdIn.readInt()
        var lp_check = 0
        if(year%4 == 0)
        {
            if(year%100==0)
            {
                if(year%400==0)
                {
                    lp_check = 1
                }
                else{
                    lp_check = 0
                }
            }
            else{
                lp_check = 1
            }
        }
        else{
            lp_check = 0
        }
        val lp_year = Map("Jan" -> 31,"Feb" -> 29,"March" -> 31,"April" -> 30,"May" -> 31,"June" -> 30,"July" -> 31, "August" -> 31,"September" -> 30, "October" -> 31, "November" -> 30,"December" -> 31)
        val n_lp_year = Map("Jan" -> 31,"Feb" -> 28,"March" -> 31,"April" -> 30,"May" -> 31,"June" -> 30,"July" -> 31, "August" -> 31,"September" -> 30, "October" -> 31, "November" -> 30,"December" -> 31)
        var res = 0
        lp_check match{
            case 0 => res = n_lp_year(mnth)
            case 1 => res = lp_year(mnth)
            case _ => println("Incorrect input")
        }
        println(res)
    }
}