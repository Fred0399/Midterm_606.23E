// Explanation;

// 1.String? name;. The ? makes the name variable nullable.
// 2.Name ??  'Guest' The ?? operator checks if name is null; if it is, it returns 'Guest'.

void main() {
  String? name;

  // Assign 'Guest' to name only if it's currently null
  name ??= 'Guest';

  print('Hello, $name!');
}