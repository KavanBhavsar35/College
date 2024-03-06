package AOOP;

public class Prac23 {
    public static void main(String[] args) {
        try {
            @SuppressWarnings("unused")
            int num = 10;
            int denominator = 0;
            if (denominator == 0) {
                throw new DivideByZeroException("Can not divide by Zero !");
            }
        } catch (DivideByZeroException e) {
            System.out.println("Error: " + e);
        }
    }
}

class DivideByZeroException extends Exception {
    public DivideByZeroException(String message) {
        super(message);
    }
}