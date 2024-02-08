/**
 * Prac2
 */
import java.util.Scanner;
public class Prac2 {

    public static void main(String[] args) {
        int a,b,c;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number one: ");
        a = sc.nextInt();
        System.out.print("Enter number two: ");
        b = sc.nextInt();
        System.out.print("Enter number three: ");
        c = sc.nextInt();

        if (a >b && a> c) {
            System.out.println("A is grater");
        } else if (b > c) {
            System.out.println("B is grater");
        } else {
            System.out.println("C is grater");
        }

        sc.close();
        
    }
}