import java.util.Scanner;
class factorial
{
    public static int fact(int num) {
        if(num == 1 || num == 0){
            return 1;
        }
        else{
            return num * fact(num-1);
        }
    }
    public static void main(String args []) {
        Scanner sc = new Scanner(System.in);
        int num,res;
        System.out.println("Enter the number");
        num = sc.nextInt();
        sc.close();
        res = fact(num);
        System.out.println(res);
    }
}