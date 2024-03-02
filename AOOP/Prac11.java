package AOOP;

public class Prac11 {
    public static void main(String[] args) {
        Shape rect = new Shape();
        Shape circle = new Shape();
        System.out.println(rect.area(3, 2));
        System.out.println(circle.area(7));
    }
}
class Shape {
    float radius,length,width;
    float area(float radius) {
        return radius * radius * 3.14f;
    }
    float area(float length, float width) {
        return length * width;
    }
}