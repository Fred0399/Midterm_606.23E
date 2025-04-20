// task 1
//map()- used to transform each element in a list .Returns a new list
//where()- used to filter elements that satisfy a given condition. Returns a new list

// NOTE:
// The answer is particularly weak in:
// No specific use cases

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5];
//   var squared = numbers.map((n)=> n*n);
//   print(squared.toList());
//   var evens = numbers.where((n)=> n%2 == 0);
//   print(evens.toList());
// }





// task 2
// void main() {
//   int? a;
//   int b = 5;
//   int sum = ( a ?? 0) + b;
//   print(sum);
// }



// task 3
 String computeBMI(double weight, double height) {
  double bmi = weight / (height * height);
  if (bmi < 18.5) return "Underweight";
  if (bmi < 24.9) return "Normal";
  if (bmi < 29.9) return "Overweight";
  return "Obese";
}

// void main() {
//   print(computeBMI(700, 1.75)); // Normal
// }


// task4
class Person {
  String name;
  Person(this.name);

  void display() {
    print("Name: $name");
  }
}

class Employee extends Person {
  double salary;
  Employee(String name, this.salary) : super(name);

  @override
  void display() {
    super.display();
    print("Salary: $salary");
  }
}

class Manager extends Employee {
  String department;
  Manager(String name, double salary, this.department) : super(name, salary);

  @override
  void display() {
    super.display();
    print("Department: $department");
  }
}

void main() {
  Manager manager = Manager("Aydan", 5000, "IT");
  manager.display();
}

