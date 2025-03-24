/*

      🔥 Mini Challenge (OOP in Dart)
      
      📌 Task: Implement a simple Banking System
      
      Requirements:
      1. Create a BankAccount class with:

      - accountNumber, holderName, and balance

      - A constructor to initialize these values.

      deposit(amount) and withdraw(amount) methods.

      2. Create a SavingsAccount class that:

     - Inherits from BankAccount

      - Overrides the withdraw() method to prevent overdraft (withdraw more than balance).

      - Create an object of SavingsAccount and perform some operations.

      🔥 Bonus: If balance goes below 100, print "Warning: Low Balance!"

*/

// Class [BankAccount]
class BankAccount {
  // data-members & member-functions!
  int accountNumber;
  double balance;
  String holderName;

  // () - constructor to initialize the Class members (variables)
  BankAccount(this.accountNumber, this.balance, this.holderName);

  // () -> handle deposit
  void deposit(int amount) {
    // update the balance
    this.balance += amount;

    // toast
    print(
      "Hey ${holderName},\nRS${amount} has been deposited from your account!",
    );
  }

  // () -> handle withdraw
  void withdraw(int amount) {
    // update the balance
    this.balance -= amount;

    // toast
    print(
      "Hey ${holderName},\nRS${amount} has been withdrawn from your account!",
    );
  }

  // () - show balance
  void showBalance() {
    print(
      "Hey, ${holderName}\nYour Current Account-Balance is RS${balance} 💵",
    );
  }
}

// Child Class SavingsAccount -> Super Class {BankAccount}
class SavingsAccount extends BankAccount {
  //. get values from Super Class {BankAccount}
  SavingsAccount(int accountNumber, double balance, String holderName)
    : super(accountNumber, balance, holderName);

  // () - handle interest
  void applyInterest(double rate, int amount) {
    // calculate rate of interest!
    double roi = (rate * amount / 100);
    // apply rate
    balance += roi;
  }

  @override
  void deposit(int amount) {
    super.deposit(amount); // used Super Class's method
    // applied interest of 2%
    applyInterest(2, amount);
  }

  // override method..
  @override
  void withdraw(int amount) {
    // check balance?
    if (balance < 100) {
      print("🔴 Low Account Balance 🔴\nCurrent Balance: RS${balance}");
    }

    // check amount?
    if (amount > balance) {
      print("❌ Wihdrawl Failed: Insufficent Funds!");
    } else {
      balance -= amount; // alow withdrawl
    }
  }
}

// main ()!
void main() {
  // Instance of Child Class
  var savingsAccount = SavingsAccount(100111222131, 5000, "Anay Singhania");

  // deposit
  savingsAccount.deposit(1000);
  print("-" * 30); //ignore-this

  // show balance
  savingsAccount.showBalance();
  print("-" * 30); //ignore-this

  // withdraw amount!
  savingsAccount.withdraw(5900); // test-2
  savingsAccount.showBalance();

  print("-" * 30); //ignore-this
  savingsAccount.withdraw(100); // test-3

  // withdraw amount!
  savingsAccount.deposit(1000); // test-4
  savingsAccount.showBalance();
}
