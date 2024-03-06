package AOOP;

public class Prac18 {
    @SuppressWarnings("unused")
    public static void main(String[] args) {

        Car[] cars = new Car[5];

        cars[0] = new Car("Porsche 911", 330); 
        cars[1] = new Car("Ferrari 488 GTB", 330); 
        cars[2] = new Car("Lamborghini Aventador", 350); 
        cars[3] = new Car("Dodge Challenger", 200);
        cars[4] = new Car("Ford Mustang", 250);

        for (Car car : cars) {
            System.out.println(car);
        }
    }
}

class Car {
    String name;
    int topSpeed;
    
    Car(String name, int topSpeed) {
        this.name  = name;
        this.topSpeed = topSpeed;
    }

    @Override
    public String toString() {
        return String.format("Car name: %s, Top Speed: %d", name, topSpeed);
    }
}
