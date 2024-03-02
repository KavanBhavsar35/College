package AOOP;

public class prac9 {
    @SuppressWarnings("unused")
    public static void main(String[] args) {
        StaticEg obj1 = new StaticEg();
        StaticEg obj2 = new StaticEg();
        StaticEg obj3 = new StaticEg();

        System.out.println("Objects created: " + StaticEg.counter);
    }
}
class StaticEg {
    static int counter = 0;
    static void increment() {
        counter++;
    }
    StaticEg () {
        increment();
    }
}