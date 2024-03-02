package AOOP;

public class Prac15 {
    public static void main(String[] args) {
        ClassZ objZ = new ClassZ();
        objZ.disp();
    }
}

class ClassX {
    int x;
}

class ClassY extends ClassX {
    int y;
}

class ClassZ extends ClassY {
    int z;
    void disp() {
        System.out.println(x + y + z);
    }
}
