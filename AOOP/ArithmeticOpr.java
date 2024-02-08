package AOOP;
import java.util.*;
public class ArithmeticOpr {
   
    public static void main (String[] args) {
        // int a=10;
        // int b=4;

        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();

        int x = a+b; 
        int y = a-b; 
        int z = a*b; 
        int w = a/b; 

        System.out.println("Sum of a and b is " + x);
        System.out.println("Diff of a and b is " + y);
        System.out.println("Mul of a and b is " + z);
        System.out.println("Div of a and b is " + w);

        sc.close();
    }
}

