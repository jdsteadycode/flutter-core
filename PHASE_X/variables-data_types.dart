void main() {
  // data-types in dart
  //. [dynamic]: handles any type of data regardless of re-assignments done...
  print("dynamic in action!");
  dynamic occupation = "Data Analyst";
  // log**
  print("Occupation Then: ${occupation}");

  //. mutate(s) occupation!
  occupation = "Business Analyst";
  // log**
  print("Occupation After: ${occupation}");

  // Can assign other type of data as-well!
  occupation = false; // works!
  // log**
  print(
    "Occupation Now: ${occupation == false ? "un-occupied" : occupation}",
  ); // un-occupied as `false`

  // ignore this**
  print("-" * 30);

  //. [var]: handles any type of data regardless of re-assignments
  // But, of same-type as previously assigned**
  print("var in action!");
  var address = "ABC Street, Abu Road!";
  // log**
  print("Address Then: ${address}");

  //. mutate(s) address
  address = "Chikuwadi, Abu Road";
  // log**
  print("Address After: ${address}");

  //. But, one cannot re-assign other data to `address`
  // address = 123;    // error: `int` can't be assigned to a `String`!
  // check**
  //print("Address Now: ${address}");   // throws error as above!
}
