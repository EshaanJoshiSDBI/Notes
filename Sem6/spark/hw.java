import java.util.Scanner;
class hw{
		public static boolean isStarDot(char inp){
			if(inp.equals('*')){
				return true;}
			else if(inp.equals('.')){
				return true;}
			else{
				return false;}}
	public static void main(String [] args){
		Scanner sc = new Scanner(System.in);
		char inp;
		int num;
		System.out.println("Enter the size of the vector");
		num = sc.nextInt();
		char [] vec = new char [num];
		int i = 0;
		while(i < num){
			System.out.println("Enter the character (*/. only)");
			inp = sc.next().charAt(0);
			if(isStarDot(inp)){
				vec[i] = inp;
				i++;}
			else{
				System.out.println("The character entered was not a '*' or '.', please enter again!");}
				for(int ii=0;i<vec.length;i++){
					System.out.println(vec[i]);}}}}
