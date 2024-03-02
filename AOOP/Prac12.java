package AOOP;

public class Prac12 {
    public static void main(String[] args) {
        Overload obj1 = new Overload();
        Overload obj2 = new Overload(43);
        System.out.println(obj1.x);
        System.out.println(obj2.x);
    }
}

class Overload {
    int x;
    Overload(int x) {
        this.x = x;
    }
    Overload() {
        this.x = 0;
    }
}