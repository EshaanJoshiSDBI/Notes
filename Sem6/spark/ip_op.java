import java.util.Scanner;

public class newClass{
	public static void main(String[] args){
		int age;
		char gender;
		String name;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter your name");
		name = sc.next();
		System.out.println("Enter your age");
		age = sc.nextInt();
		System.out.println("Enter your gender");
		gender = sc.next().charAt(0);
		System.out.println("Your name is: "+name);
		System.out.println("Your age is: "+age);
		System.out.println("Your are a  "+gender);

		}}
