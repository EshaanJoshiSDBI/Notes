//import java.StringUtils.repeat;
import java.util.Scanner;
class test{
	public static void main(String[] args){
		String sent;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the sentence");
		sent = sc.nextLine();
		String [] words = sent.split(" ");
		String maxword = "";
		for(int i = 0;i < words.length;i++){
			if(words[i].length() > maxword.length()){
				maxword = words[i];}}
				//System.out.println("The longest word in the given sentence is: "+maxword);
				//for(int i = 0;i<maxword.length();i++){
					//String temp = " ".repeat(i);
					//System.out.println(" ".repeat(i)+maxword.charAt(i));}
					char [] longestword = new char [maxword.length()];
					for(int i = 0;i<maxword.length();i++){
						longestword[i] = maxword.charAt(i);}
					for(int i = 0;i<longestword.length;i++){
						System.out.println(" ".repeat(i)+longestword[i]);
					}}}
