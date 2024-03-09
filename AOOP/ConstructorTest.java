package AOOP;

public class ConstructorTest {
    public static void main(String[] args) {
        A[] obj = new A[5];
        
    }
}

class A {
    A() {
        System.out.println("constructor called");
    }
    A(int x) {
        System.out.println("Param " + x + " passed");
    }
}