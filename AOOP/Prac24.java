package AOOP;

public class Prac24 {
    public static void main(String[] args) {
        Account account = new Account();
        account.deposit(25000);
        try {
            account.withdraw(20000);
            account.withdraw(4000);
            account.withdraw(2000);
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}

class Account {
    int balance;
    void withdraw(int amount) throws Exception{
        if (this.balance < amount) {
            throw new Exception("Not Sufficient Balance");
        }
        this.balance -= amount;
    }
    void deposit(int amount) {
        this.balance += amount;
    }
}