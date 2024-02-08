package AOOP;
public class Array {
    public static void main(String[] args) {
        int arr[] = new int[5];
        System.out.println("Simple array");
        for (int i = 0; i < arr.length; i++) {
            arr[i] = i;
        }
    
        //multi dim array


        int[][] arr1 = {{1,2,3},{4,5,6},{7,8,9}};
        System.out.println("\n\nMulti dimm array\n\n");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print(arr1[i][j] +" ");
            }
            System.out.println();
        }
        
        
        // jagged array
        
        int[][] arr2 = new int[4][];
        arr2[0] = new int[2];
        arr2[1] = new int[1];
        arr2[2] = new int[5];
        arr2[3] = new int[3];
        int count = 1;
        System.out.println("\n\nJagged array array\n\n");
        for (int i = 0; i < arr2.length; i++) {
            for (int j = 0; j < arr2[i].length; j++, count++) {
                arr2[i][j] = count;
            }
        }
        for (int i = 0; i < arr2.length; i++) {
            for (int j = 0; j < arr2[i].length; j++) {
                System.out.print(arr2[i][j] +" ");
            }
            System.out.println();
        }
    }

}
