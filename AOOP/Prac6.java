package AOOP;

public class Prac6 {
    public static void main(String[] args) {
        Student s1 = new Student("Kavan",12);
        Student s2 = new Student("Rishabh",13);
        Student s3 = new Student("Mohit",9);
        System.out.println(s1.getStudentName());
        System.out.println(s2.getStudentName());
        System.out.println(s3.getStudentName());
    }
}

class Student {

    public int rno;
    public String name;

    public Student(String name, int rno){
        this.name = name;
        this.rno = rno;
    }

    public String getStudentName() {
        return this.name;
    }
}