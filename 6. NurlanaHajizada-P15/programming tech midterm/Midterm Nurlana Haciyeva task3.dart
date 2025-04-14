//task 3
List<num> findTop3Largest(List<num> numbers) {
  if (numbers.length < 3) {
    numbers.sort();
    return numbers.reversed.toList();
  }
 List<num> top3 = numbers.sublist(0, 3)..sort();

  for (int i = 3; i < numbers.length; i++) {
    if (numbers[i] > top3[0]) {
      top3[0] = numbers[i];
      top3.sort();
    }
  }
  return top3.reversed.toList();
}

void main() {
  List<num> numbers1 = [1, 5, 2, 8, 3, 9, 4, 7, 6];
  List<num> top3_1 = findTop3Largest(numbers1);
  print("Top 3 largest numbers from $numbers1: $top3_1");
}