// Explanation;

// •where() filters the list based on a condition.
// •name.startsWith('S') checks if the name begins with 'S'.
// •toList() converts the filtered iterable back to a list.

List<String> filterNamesStartingWithS(List<String> names) {
  return names.where((name) => name.startsWith('S')).toList();
}

void main() {
  List<String> names = ['Sydney', 'Alice', 'Steve', 'Bob', 'Samantha', 'John'];

  List<String> sNames = filterNamesStartingWithS(names);

  print(sNames); // Output: [Sam, Steve, Sandra]
}