package AOOP;

public class Prac14{
    public static void main(String[] args) {
        SubClass subObj = new SubClass();
        System.out.println(subObj.x);
    }
}
class BaseCLass  {
    int x;
}
class SubClass extends BaseCLass{
    void dispX() {
        System.out.println(x);
    }
}
