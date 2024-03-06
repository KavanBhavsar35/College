package AOOP;

public class Prac21 {
    public static void main(String[] args) {
        FinalClass fc = new FinalClass();
        fc.message();
    }
}

final class FinalClass {
    // Class implementation
    void message() {
        System.out.println("Hello from Final");
    }
}

// class SubClass extends FinalClass {}