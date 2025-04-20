// Task 1)

// //Why Do We Need It?
// When the names of constructor parameters are the same as the class variables, Dart gives priority to the parameters. In this case, if we want to assign the value of the parameter to the instance variable, we need a way to tell Dart, “I’m talking about the variable that belongs to this object, not the parameter.” That’s where this comes in.

//   Person(String name, int age) {
//     this.name = name;
//     this.age = age;
//   }

//   void introduce() {
//     print("Hi, I'm $name and I'm $age years old.");
//   }
// }

// void main() {
//   Person p = Person("Khayal", 18);
//   p.introduce();
// }

// //What Happens Without 'this'?
// If we wrote just name = name;, Dart would think both are the parameter, so nothing would be assigned to the class variable. That means the class variable would stay uninitialized or null. By using this.name, we are clearly saying “the name that belongs to this object.”

// Task 2)

// void main() {
//   int sum = 0;
//   int i = 1;

//   while (i <= 10) {
//     sum += i;
//     i++;
//   }

//   print("Sum $sum");
// }

// Task 3)

List<int> filterNumbers(List<int> numbers) {
  return numbers.where((number) => number >= 50).toList();
}

//// NOTE: clearly says that numbers less than 50, but your code finds greater than 50
// void main() {
//   List<int> myList = [10, 55, 23, 67, 49, 90];
//   List<int> filtered = filterNumbers(myList);

//   print("List: $myList");
//   print("Below 50 numbers: $filtered");
// }

// Task 4)

mixin AgeCalculator {
  int calculateAge(int birthYear) {
    final currentYear = DateTime.now().year;
    return currentYear - birthYear;
  }
}

class Person with AgeCalculator {
  String name;
  int birthYear;

  Person(this.name, this.birthYear);

  void displayInfo() {
    print('Name: $name');
    print('Birth Year: $birthYear');
    print('Age: ${calculateAge(birthYear)}');
  }
}

void main() {
  Person person = Person('Khayal', 2005);
  person.displayInfo();
}








