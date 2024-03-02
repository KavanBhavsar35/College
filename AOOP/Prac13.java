package AOOP;

public class Prac13 {
    public static void main(String[] args) {
        String str = "Hello, World!";

        char charAtIndex5 = str.charAt(5);
        System.out.println("Character at index 5: " + charAtIndex5);

        boolean containsWorld = str.contains("World");
        System.out.println("Contains 'World': " + containsWorld);

        String formattedString = String.format("Formatted: %s", str);
        System.out.println(formattedString);

        int lengthOfString = str.length();
        System.out.println("Length of the string: " + lengthOfString);

        String[] splitArray = str.split(",");
        System.out.println("After splitting by ',': ");
        for (String s : splitArray) {
            System.out.println(s);
        }
    }
}
