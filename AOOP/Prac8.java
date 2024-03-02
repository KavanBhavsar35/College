package AOOP;

public class Prac8 {
    public static void main(String[] args) {
        A a = new A();
        a.setX(32);
    }
}
class A {
    int x;
    public void setX(int x) {
        System.out.println("Old X: " + this.x);
        this.x = x;
        System.out.println("New X: " + this.x);
    }
    
}