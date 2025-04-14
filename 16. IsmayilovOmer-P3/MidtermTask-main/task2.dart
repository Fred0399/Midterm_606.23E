void multiplicationTable({required int number}) {
  for (int i = 1; i <= 10; i++) {
    print("$number * $i = ${number * i}");
  }
}

void main() {
  // test
  for (int i = 1; i <= 10; i++) {
    multiplicationTable(number: i);
    print("---------");
  }
}
