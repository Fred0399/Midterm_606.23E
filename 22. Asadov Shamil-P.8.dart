// 							problem 8
// 	Number: 1

// The role of the abstract class is that :
// - A class that can not be instantieted:
// - Used to define a base class that other classes can extend;
// - Contains abstract methods(withoout implementation);
import 'dart:math';

// 	 Number: 2
// void main() {
//   for (int i = 1; i < 50; i++) {
//     int key = i % 3;
//     if (key == 0) {
//       print('The value of divisor is: $i');
//     }
//   }
// }

// Number: 3

void displayStudentProfile({
  required String name,
  required int age,
  String grade = 'Not assigned',
  String email = 'No email provided',
  String phone = 'No phone number',
}) {
  print('--- Student Profile ---');
  print('Name : $name');
  print('Age  : $age');
  print('Grade: $grade');
  print('Email: $email');
  print('Phone: $phone');
}

// void main() {
//   displayStudentProfile(
//     name: 'somebody',
//     age: 20,
//     email: 'alice@example.com',
//   );

//   displayStudentProfile(
//     name: 'anybody',
//     age: 22,
//     grade: 'A',
//     phone: '0550005500',
//   );
// }

// Number: 4

class Circle {
  final double radius;

  const Circle(this.radius); // Constant constructor

  double get area => pi * radius * radius; // Method to calculate area
}

void main() {
  const circle = Circle(3);
  print("Area of the circle: ${circle.area}");
}
