// () -> render list of programming-languages
List listProgrammingLanguages() {
  // handle data in `list` [array]...
  List<String> languages = [
    "JavaScript",
    "Python",
    "Dart",
    "Java",
    "PHP",
    "ASP.NET",
  ];

  return languages;
}

// () -> render set of random names!
Set fetchRandomNames() {
  // random-names
  Set<String> names = {
    // `Set` doesn't store redundant values...
    "odin",
    "odin",
    "replit",
    "linux",
    "odin",
    "mysql",
    "vue js",
  };
  return names;
}

// () -> render Map {Object} of user-profile!
Map fetchUserProfile() {
  Map<dynamic, dynamic> profile = {
    // Map {Object} to handle user-profile
    "id": 12,
    "name": "JD",
    "occupation": "Student",
    "isMarried": false,
  };
  return profile;
}

// () -> render Map {Object} of country-names!
Map fetchCountryNames() {
  Map<String, String> countries = {
    // Map {Object} to handle country-names
    "IN": "INDIA",
    "FR": "FRANCE",
    "US": "UNITED STATES OF AMERICA",
    "UK": "UNITED KINGDOM",
  };
  return countries;
}

void main() {
  // entry point!

  // [List] is collection of the data-items i.e., sequence data-type.
  // allows to store data of various types
  // Hence mutable and ordered in-nature....
  // EX: imagine a `list` where you oragnize your to-dos for your DAY!!💡

  // [Set] another collection of the data-items.
  // allows to store *non-duplicate* data of various types
  // Hence im-mutable and un-ordered in-nature....
  // EX: imagine a `set` where you store random password-patterns💡

  // [Map] another collection of the data-items.
  // allows to store data in {Object} i.e., key-value pairs!
  // Hence it's mutable in-terms of it's attributes/ properties
  // EX: imagine a `Map` where you store user-profile💡

  // ignore this*
  print("-" * 30);
  listProgrammingLanguages().forEach(print); // render the languages

  // ignore this*
  print("-" * 30);
  listProgrammingLanguages().asMap().forEach((lang, index) {
    //. converting it into map...
    print("${lang} at ${index}");
  });

  // ignore this*
  print("-" * 30);
  print("-" * 30);
  fetchRandomNames().forEach(print); //. render the `set's` data

  // ignore this*
  print("-" * 30);
  print("-" * 30);
  fetchUserProfile().forEach(
    (key, value) => print("${key} - ${value}"),
  ); //. render the `map's` data

  print("-" * 30);
  fetchCountryNames().forEach(
    (key, value) => print("${value}"),
  ); //. render the `map's` data
}
