package AOOP;

public class Prac20 {
    public static void main(String[] args) {
        Shape rectangle = new Rectangle(1,5);
        Shape triangle = new Triangle(2,6);
        Shape square = new Square(4);
        System.out.println("Area of Rectangle: " + rectangle.area());
        System.out.println("Area of Triangle: " + triangle.area());
        System.out.println("Area of Square: " + square.area());
    }
}
abstract class Shape {
    abstract float area();
}

class Triangle extends Shape {
    float base, height;
    Triangle(float base, float height) {
        this.base = base;
        this.height = height;
    }
    float area() {
        return 0.5f * base * height;
    }
}
class Rectangle extends Shape {
    float length, width;
    Rectangle(float length, float width) {
        this.length = length;
        this.width = width;
    }
    float area() {
        return length * width;
    }
}
class Square extends Shape {
    float length;
    Square(int length) {
        this.length = length;
    }
    float area() {
        return length * length;
    }
}