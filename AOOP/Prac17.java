package AOOP;

public class Prac17 {
    public static void main(String[] args) {
        Animal animal = new Animal();
        Cat cat = new Cat();
        Dog dog = new Dog();

        animal.speak();
        cat.speak();
        dog.speak();
        
    }
}

class Animal {
    void speak() {
        System.out.println("Animal is making sound");
    }
}
class Dog extends Animal {
    void speak() {
        System.out.println("Dog is barking");
    }
}
class Cat extends Animal {
    void speak() {
        System.out.println("Cat says meow");
    }
}