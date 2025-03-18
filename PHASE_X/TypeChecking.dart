// () -> fetch the user-age...
int getUserAge(int? age) {
  // fetch-out user age
  return age ??
      18; //. default-value when it finds `age` is gonna be null via `nullish` operator
}

// () -> generate user-profile
dynamic fetchUserProfile(String? name, int? age) {
  // default parameters**
  name = name ?? "Guest";
  age = age ?? 18;

  // log**
  print("NAME: ${name} of AGE: ${age}");
}

// entry-point**
void main() {
  // [Type-Checking in Dart]
  // Dart is combo i.e., `static` and `dynamic` typed langauge.
  // Here, Dart Engine checks on compile-time and run-time to ensure type matches the defined type of variable!

  // A variable! [Un-comment the below code** to understand what exactly happens there...]
  // var user = "";

  // assign some value
  // user = "Josh"; // String

  // user = 123; // Error: As `String` variable can't hold any numeric-value...

  /*
    NOTE: Dart Engine does a check in before run-time and during run-time as well ensuring the type remains accordingly as per rules applied...
  */

  // [Null-Safety]:
  // Here in dart the all variables are `non-nullable`. Which means variables by-default cannot hold `null` value
  // FOR EX: we have variable of type `int` (int age = 12;).
  // Here, Dart Engine wont allow to `null` in variable resulting it to an Run-Time Error.

  // So to safely handle the `null` constraints the Dart provides two ways:-
  // `?` [Nullish Operator].
  // `!` [Forced/ Bang Operator].

  // Firstly,
  // `?` operator tells the Dart Engine that corresponding variable might have a `null` value or other appropriate value.

  // EX
  // `set` of pincodes
  Set<String?>? pincodes = {null, "396191", "400111"}; // null-safe

  // check?
  pincodes.contains(null)
      ? print("There's a Null Value 🤡")
      : pincodes.forEach(print);

  // ignore-this**
  print("-" * 30);
  print(getUserAge(null)); // **test-case A

  // ignore-this**
  print("-" * 30);
  print(getUserAge(20)); // **test-case B

  // `!` Operator allows to forcefully tell the Dart Engine the variable cannot be `null`.
  // But, If `value` still is `null` Then, Dart Engine gives `run-time` Error.

  // EX
  String? data = "Jash";

  // check? when data isn' null
  if (data != null) {
    print(
      data!.toLowerCase(),
    ); //. thus forcefully converts the data into `lowercase` ** Also if data is null then it would generate run-time Error
  } else {
    data = "Jay";
    print(data);
  }

  // ignore-this**
  print("-" * 30);
  print(fetchUserProfile(null, 24)); // **test-case A

  // ignore-this**
  print("-" * 30);
  print(fetchUserProfile("Jashwant", null)); // **test-case B
}
