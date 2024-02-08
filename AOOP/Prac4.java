package AOOP;
public class Prac4 {
    public static void main(String[] args) {
        int[][] m1  = {{1,2,3},{4,5,6},{7,8,9}};
        int[][] m2  = {{9,8,7},{6,5,4},{3,2,1}};
        int[][] m3 = new int[3][3];

        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                m3[i][j] = m1[i][j] + m2[i][j];
            }
        }
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print(m3[i][j] + " "); ;
            }
            System.out.println();
        }
    }
}
