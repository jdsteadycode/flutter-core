// () -> Even || Odd?
void evenOrOdd(int param1, var param2) {
  // handle user - via If conditionals**
  if (param2 == null || param2 == "" || param2 == " ") {
    param2 = "Guest"; // provide a `default` value..
  }

  if (param1 < 0) {
    // make sure input is non -ve**
    print("😵 Ah ${param2} have entered ${param1} 😵");
    print("Please try entering some +ve numerical value Okay...🥳");
  } else {
    // store the input* as usual!
    param2;

    // proceed further!
    // check?
    param1 % 2 == 0
        ? print("Hey ${param2} the number is Even 😳")
        : print(
          "Hmm, ${param2} The  number is Odd 😨",
        ); // shorthand for simplicity
  }
}

// () -> day-fact(s)!
void fetchDayFact(String? param1) {
  // Map {Object} to handle the days...
  Map<String, String> days = {
    "mon": "Monday",
    "tue": "Tuesday",
    "wed": "Wednesday",
    "thu": "Thursday",
    "fri": "Friday",
    "sat": "Saturday",
    "sun": "Sunday",
  };

  if (param1 == null || param1 == "" || param1 == " ") {
    param1 = "sun"; // default key?
  }

  // check input? Abbreviation...
  days.containsKey(param1) ? param1 = days[param1] : param1;

  // switch-case to handle day(s)
  switch (param1) {
    case "monday": // `monday`
      print(
        "🤓 ${param1} is only the day which can be written in single-word i.e., `dynamo`.",
      );
      break;

    case "tuesday": // `tuesday`
      print("😏 ${param1} often seen as mischievous day of the week.");
      break;

    case "wednesday": // `wednesday`
      print("🤯 ${param1} statistically the most productive day of the week!");
      break;

    case "thursday": // `thursday`
      print("😌 ${param1} prelude to the weekend carrying it's own excitement");
      break;

    case "friday": // `friday`
      print("🥳 ${param1} Happiest and joyful day of the week");
      break;

    case "saturday": // `saturday`
      print("😇 ${param1} is the day of freedom and leisure.");
      break;

    case "sunday": // `sunday`
      print("🫡 ${param1} is the day of reflection and renewal");
      break;

    default: // `when none-matches`
      print("🤧 ${param1} isn't a valid-day!");
      break;
  }
}

// () -> Entry Point**
void main() {
  //. [Conditionals**]: such statements who direct the code-execution flow in dart!**
  //. i.e., allow to execute the code-block based on given condtion!
  //. Simple EX: `dart-compiler` prints either 'Cold!💧' or 'Hot!🔥' according to given condtion as `temperature 💥`

  // invoke evenOrOdd(...)
  print("evenOrOdd() in action");
  evenOrOdd(2, ""); // test-case-1

  // ignore-this!
  print("-" * 30);
  evenOrOdd(19, "Jeet"); // test-case-2

  // ignore-this!
  print("-" * 30);
  evenOrOdd(-33, "Jeet"); // test-case-3

  // ignore-this!
  print("-" * 30);
  fetchDayFact("Friday"); // test-case-a

  print("-" * 30);
  fetchDayFact("Saturday"); // test-case-b

  print("-" * 30);
  fetchDayFact("123"); // test-case-c

  print("-" * 30);
  fetchDayFact(""); // test-case-d
}
