// task_1
// The main differences between the two are: Positional parameters must be passed in the same order as they appear in the function signature, whereas named parameters can be passed in any order. 
// Positional parameters are defined by their position in the parameter list, whereas named parameters are defined by their name.
/// Note: doesn't full cover the question;
/// 
// task_2
// void main() {
//   printPrimeNumbers(1, 50);
// }

void printPrimeNumbers(int start, int end) {
  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}

bool isPrime(int num) {
  if (num <= 1) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

// task_3
double calculateAverage(List<double> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('List is empty');
  }
  double sum = 0.0;
  for (var number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}

// void main() {
//   List<double> numbers = [1.5, 2.3, 3.7, 4.0];
//   try {
//     double average = calculateAverage(numbers);
//     print('average: $average');
//   } catch (e) {
//     print(e);
//   }
// }

// task_4
mixin CanFly {
  bool canFly(double cargoWeight, double totalWeight) {
    return cargoWeight < 50 && totalWeight < 900;
  }
}

class Rocket with CanFly {
  double cargoWeight;
  double totalWeight;

  Rocket({required this.cargoWeight, required this.totalWeight});

  void launch() {
    if (canFly(cargoWeight, totalWeight)) {
      print("Rocket is launching!");
    } else {
      print("Launch aborted: weight constraints not met.");
    }
  }
}

void main() {
  Rocket rocket1 = Rocket(cargoWeight: 45, totalWeight: -199);
  rocket1.launch(); // Should print: Rocket is launching!

  Rocket rocket2 = Rocket(cargoWeight: 55, totalWeight: 850);
  rocket2.launch(); // Should print: Launch aborted: weight constraints not met.
}