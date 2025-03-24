/*

      🔥 Mini Challenge (OOP in Dart)
      
      📌 Task: Implement a simple ATM-MENU System

      Create a simple interactive menu (ATM Menu) where the user can:

        - Check balance.

        - Withdraw money.

        - Deposit money.

        - Change PIN.

        - Exit.

*/

// utilites
import 'dart:io';

// class ATM
class ATM {
  // data-member and member-functions
  int pin;
  String accountHolder;
  double balance;

  // () - constructor to initialize members
  ATM(this.pin, this.accountHolder, this.balance);

  // () -> check-balance
  void checkBalance() {
    //. handle balance?
    if (this.balance < 100) {
      print("⚠️ WARNING! LOW A/C BALANCE RS${this.balance}");
    } else {
      print("Your Current Balance: RS${this.balance}");
    }
  }

  // () - insert card!
  void insertCard() {
    print("ATM CARD INSERTED SUCCESSFULY! ☑️");
  }

  // () - eject card!
  void ejectCard() {
    print("ATM CARD DISPATCHED SUCCESSFULY! ✅");
  }

  //. () - withdraw money
  void withdraw(int amount) {
    // check balance?
    if (amount > balance) {
      print("⚠️WARNING! Insuffiecent funds!");
    } else {
      balance -= amount; // allow withrawl
      // toast
      print("RS${amount} was successfuly withdrawn");
    }
  }

  // () - deposit money
  void deposit(int amount) {
    // update the balance
    balance += amount;
    // toast
    print("RS${amount} was successfuly deposited 💵");
  }
}

// main ()!
void main() {
  // instantiate the Class
  var atm = ATM(1001, "Jagan Reddy", 10000);

  // track pin-entries
  int pinEntries = 0;
  // max-tries
  int maxEntries = 3;
  // **menu**
  while (pinEntries < maxEntries) {
    // track-pin
    pinEntries++;

    // Ask Auth?
    print(
      "Welcome, ${atm.accountHolder}\nPlease enter PIN for Verification\nTRY'S LEFT: ${pinEntries}/${maxEntries}",
    );
    String? pinEntered = stdin.readLineSync();

    // samitize values
    int pin = int.tryParse(pinEntered!) ?? 0;

    // verify the pin**
    if (atm.pin != pin) {
      print("Re-enter the Pin? ");
    } else {
      // insert card
      atm.insertCard();

      while (true) {
        // all-fine then show atm-menu!
        print("${"-" * 10} 🏧 PORTAL ${"-" * 10}");
        print("1. Check Balance");
        print("2. Withdraw Money");
        print("3. Deposit Money");
        print("4. Change PIN");
        print("5. Exit");
        print("-" * 30);

        // handle user-input!
        String? userInput = stdin.readLineSync();

        // switch-case to handle the options*
        switch (userInput) {
          case "1":
            // view balance
            atm.checkBalance();
            break;
          case "2":
            // ask?
            print("Enter Acceptable Amount to Withdraw: ");
            // get amount?
            String? amountToWithraw = stdin.readLineSync();
            // withdraw
            atm.withdraw(int.tryParse(amountToWithraw!) ?? 0);
            break;
          case "3":
            // ask?
            print("Enter Acceptable Amount to Deposit: ");
            // get amount?
            String? amountToDeposit = stdin.readLineSync();
            // withdraw
            atm.deposit(int.tryParse(amountToDeposit!) ?? 0);
            break;
          case "4":
            // verification-code
            String code = "E1qzIB";
            // Ask?
            print(
              "Verification-Code: ${code}\nType the text given on the Screen for Verification!",
            );

            // user-input
            String? verificationText = stdin.readLineSync();

            // Verify?
            if (verificationText == code) {
              // Ask for new-pin?
              print("Enter New PIN? ");
              String? newPin = stdin.readLineSync();
              atm.pin = int.tryParse(newPin!) ?? atm.pin; // new or existing-one
              // toast
              print(
                "Hey ${atm.accountHolder},\nYOUR PIN UPDATED SUCCESSFULY! ✅",
              );
            } else {
              print("Wrong Text Entered! 🚫");
            }
            break;
          case "5":
            // remove card!
            atm.ejectCard();
            print("Bye 👋");
            exit(0);
          default:
            print("Invalid Choice");
        }
      }
    }
  }

  // Lock A/C**
  print("OOPS! ${atm.accountHolder}\nACCOUNT IS TEMPORARILY LOCKED!");
}
