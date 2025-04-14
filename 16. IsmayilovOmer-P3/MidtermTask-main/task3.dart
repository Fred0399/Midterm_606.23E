bool containsNegative(List<int> list) {
  return list.any((element) => element < 0);
}

void main() {
  List<int> integers = List.from({-1, -2, -3, -4, 0, 1, 2, 3, 4, 5});

  print("Contains negative: ${containsNegative(integers)}");
}
