// class Student(rollno:Int,name:String)
// {
//     def function(para:Any):ReturnType=
//     {
//         return ""
//     }
// }

// var s = new Student(1,"ABC")
object test
    {
        def main(args: Array[String]): Unit=
            {
                class Student(rollno:Int,name:String,age:Int,std:String)
                    {
                        var student_name = name;
                        var student_rollno = rollno;
                        var student_age = age;
                        var student_class = std;
                        def displaydata():Unit=
                            {
                                println("Current Roll Number is: ",this.student_rollno);
                                println("Current name is: ",this.student_name);
                                println("Current age is: ",this.student_age);
                                println("Current class is: ",this.student_class);
                            }
                        def change_name(new_name:String):Unit=
                            {
                                this.student_name = new_name;
                                println("Name Changed")
                            }
                        def change_data():Unit=
                            {
                                var opt = 'y';
                                while(opt=='y')
                                {
                                    println("What do you want to change (name/rollno/age/class)");
                                    println("Type exit to end editing")
                                    val data = scala.io.StdIn.readLine();
                                    if(data == "exit")
                                    {
                                        opt = 'n';
                                    }
                                    data match{
                                        case "name" => println("Enter the new name"); this.student_name=scala.io.StdIn.readLine();
                                        case "rollno" =>println("Enter the new roll number"); this.student_rollno=scala.io.StdIn.readInt();
                                        case "age" =>println("Enter the new age"); this.student_age=scala.io.StdIn.readInt();
                                        case "class" =>println("Enter the new class"); this.student_class=scala.io.StdIn.readLine();
                                        case "exit" => println("Changes made")
                                        case _ => println("Incorrect option")
                                    }
                                }
                            }
                    }
                var s = new Student(1,"ABC",15,"10")
                s.displaydata()
                s.change_name("XYZ")
                s.displaydata()
                s.change_data()
                s.displaydata()
            }
    }