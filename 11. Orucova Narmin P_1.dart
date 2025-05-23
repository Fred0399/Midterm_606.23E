/*
Question 1:
Named parameters are optional unless they are explicitly marked as required. Positional parameters are based on the position of the arguments passed. These can be required or optional.
Optional positional parameters are defined using [].Named parameters are defined using {} and can be required or optional. When calling a function with named parameters. We specify the name of the parameter followed by its value it is making the code more readable
.Positional Parameters-> Order matters; can be required or optional.
Named Parameters-> Order doesnt matter; parameters are specified by name; can be required or optional.
Using named parameters can make function calls more readable and flexible, especially when a function has many parameters.
*/

// Question 2:

String getDayType(String day) {
  switch (day) {
    case 'Saturday':
    case 'Sunday':
      return 'Weekend';
    case 'Monday':
    case 'Tuesday':
    case 'Wednesday':
    case 'Thursday':
    case 'Friday':
      return 'Weekday';
    default:
      return 'Invalid day';
  }
}

// void main() {

//  List<String> days = ['Monday', 'Saturday', 'Narmin'];

//   for (String day in days) {
//     print('$day is a ${getDayType(day)}');
//   }
// }
// Question 3:

String generateGreeting(String name, {String title = '', String suffix = ''}) {
  String greeting = 'Hello,';
  if (title.isNotEmpty) {
    greeting += ' $title';
  }
  greeting += ' $name';
  if (suffix.isNotEmpty) {
    greeting += ' $suffix';
  }

  return greeting;
}

// void main() {
//   String greeting1 = generateGreeting('Alice');
//   String greeting2 = generateGreeting('Bob', title: 'Dr.');

//   print(greeting1);
//   print(greeting2);

// }
// The generateGreeting function takes a required positional parameter name and two optional named parameters title and suffix.
// The named parameters have default values of empty strings (''), so they are optional when calling the function.
// When calling the function, named parameters title and suffix are passed by specifying their names:
// When calling generateGreeting, you pass the argument for the positional parameter name without specifying the parameter name:

// Question 4:

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  const Point.origin() : x = 0, y = 0;

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

void main() {
  const point1 = Point(3, 4);
  print(point1);
}
