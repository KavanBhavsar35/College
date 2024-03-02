package AOOP;

public class Prac7 {
    public static void main(String[] args) {
        Rectangle r1 = new Rectangle(20,7);
        Rectangle r2 = new Rectangle(5,3);
        Rectangle r3 = new Rectangle(5,17);
        System.out.println(r1.area());
        System.out.println(r2.area());
        System.out.println(r3.area());
        
    }
}

class Rectangle {

    int width,height;

    public Rectangle(int width, int height) {
        this.height = height;
        this.width = width;
    }
    public int area() {
        return this.height * this.width;
    }
}