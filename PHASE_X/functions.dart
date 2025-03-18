// () -> multiply
num multiply(num param1, num param2) => // supports both `int` or `doubles`
    (param1 * param2); // grab out the multiplication!

// () -> Entry Point**
void main() {
  // [functions]: provide simple-approach to write redundant code-blocks.
  // thus supports modularity: i.e., segments your code into usable peices as above.
  // easy updates as - An update in function reflects everything underneath being used...
  // Also code-base looks much cleaner due to this!
  // i.e., write a function --> invoke it anywhere!

  // ** invoke || call multiply(...)
  print("multiply(...) in action!");
  num output_1 = multiply(100, 20); // integers as argument!
  //log**
  print("Multiplication of Integers: ${output_1}");

  // ignore this**
  print("-" * 30);

  num output_2 = multiply(15.28, 3.2); // doubles as argument!
  //log**
  print("Multiplication of doubles: ${output_2}");
}
