// Class [Car]
class Car {
  // data-members & member-functions (methods)
  int speed;
  String brand;

  // () - constructor to initialize the data-members
  Car(this.brand, this.speed);

  //. () - method to view the data!
  void startCar() {
    // increment the speed!
    speed += 10;
    // message!
    print("${this.brand} is running at ${this.speed} km/hr 🚗");
  }
}

// Child Class {SportsCar} -> extends Super Class {Car}
class SportsCar extends Car {
  //. data-member and member-functions
  double price;

  // () - constructor to inherit properties from Super Class
  SportsCar(String brand, int speed, this.price) : super(brand, speed);

  // override method!
  @override
  void startCar() {
    print(
      "Sports Car ${brand} of price ${price} is cruising at speed of ${speed} km/hr 🏎",
    );
  }
}

// main ()!
void main() {
  // As dart supports the Object Oriented Programming Concepts,
  /*
    [Class]: raw-structure, template for defining data-members and member-methods [properties & functions]
    
    [Object]: entities who actually implement the behaviour of the Class.

    [inheritence]: technique allows to implement the abilites (properties/ methods) of Parent Class into Child Class.

    [abstraction]: technique allows to disclose only necessary info/ data without showing un-necessary details.
    // i.e., focuses on What is to be done! Instead of How is to be done?

    [encapsulation]: wrapping/ capsulating of data-members or properties into one component/ unit (class).
    - to prevent from any un-wanted external access.

  */

  // instantiate the Class
  var car = Car("Ford", 180);
  car.startCar();

  // Sub Class instance
  var sportsCar = SportsCar("BMW", 200, 6000000);
  sportsCar.startCar();
}
