package AOOP;

public class Prac16 {
    public static void main(String[] args) {
        Developer developer = new Developer();
        Teacher teacher = new Teacher();

        developer.code();
        teacher.speak();
        teacher.age++;

    }    
}

class Person {
    int age;
    void speak() {
        System.out.println("Speaking");
    }
}

class Developer extends Person {
    void code() {
        System.out.println("Developer");
    }
}
class Teacher extends Person {}

