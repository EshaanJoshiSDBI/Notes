object Demo
{
    case class Student(var roll:Int=1,var name:String="Default",var mks:Int=90)
    {
        var rollnum = roll;
        var sname = name;
        var smks = mks;
        def show_details():Unit=
            {
                println(s"The name is:$sname");
                println(s"Rollno is:$rollnum");
                println(s"The mks are:$smks");
            }
        def check():Unit=
            {
                println("hi")
            }
    }
    def main(args: Array[String]): Unit=
    {
        // var s1 = Student(69,"ABC",69);
        // var s2 = Student(mks=420);
        // s1.show_details();
        // // s1.check();
        // s2.show_details();
        val students = List(Student(69,"ABC",69),Student(mks=420),Student(2,"DEF",84),Student(3,"GHI",59))
        val temp = students.filter(s => s.mks >= 60)
        println(temp)
        val parts = students.partition(s => s.mks >=60)
        println("--------------------")
        println(parts)
    }
}
// object Demo
// {
//     def main(args: Array[String]): Unit=
//         {
//             var nums = List(4,7,2,3)
//             // nums.foreach(println)
//             println(nums.reverse)
//         }
// }