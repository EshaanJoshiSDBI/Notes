import java.util.Scanner;
public class newClass{
	public static void main(String[] args){
		int num;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the number to be checked: ");
		num = sc.nextInt();
		if(num >0){
			System.out.println("The number "+num+" is positive");
			}
		else if(num == 0){
			System.out.println("The number "+num+" is zero hence it is neutral");
			}
		else{
			System.out.println("The number "+num+" is negative");
			}
		}}
