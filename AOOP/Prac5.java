package AOOP;
import java.util.Scanner;

public class Prac5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int count = 0;
        int num = 2;
        System.out.println("Enter number of prime number you want to generate: ");
        int n = sc.nextInt();
        
        
        while (count < n) {
            boolean isPrime = true;
            for (int i = 2; i <= Math.sqrt(num); i++) {
                if (num % i == 0) {
                    isPrime = false;
                    break;
                }
            }
            if (isPrime) {
                System.out.print(num + " ");
                count++;
            }
            num++;
        }
        sc.close(); 
    }
}
