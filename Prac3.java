import java.util.Scanner;;
public class Prac3 {
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a numer to reverse: ");
        int num = sc.nextInt();
        int newNum=0;
        while (num > 0) {
            int d = num%10;
            newNum = newNum*10 + d;
            num/=10;
        }
        System.out.println(newNum);

        sc.close();
    }
}
