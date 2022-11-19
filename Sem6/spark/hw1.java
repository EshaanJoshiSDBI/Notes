import java.util.Scanner;
class hw{
	public static void main(String [] args){
		int num;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the size of the array");
		num = sc.nextInt();
		char [] vec = new char [num];
		char inp;
		int i = 0;
		while(i<num){
			System.out.println("Enter the character");
			inp = sc.next().charAt(0);
			if(inp.equals('*') || inp.equals('.')){
				vec[i] = inp;
				System.out.println("Input accepted");
				i++;
				System.out.println(i);}
			else{
				System.out.println("Wrong char entered. Only '*'/'.' accepted");
				}
			///switch(inp){
			//	case '*':
			//	vec[i] = inp;
			//	i++;
			//	case '.':
			//	vec[i] = inp;
			//	i++;
			//	default:
			//	System.out.println("Wron char entered. Only '*'/'.' accepted");}}
		for (int ii = 0;i<vec.length;i++){
			System.out.println(vec[i]);}}}}
