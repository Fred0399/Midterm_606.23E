// 1) What is the role of an abstract class in Dart? How is it different from a concrete class or a mixin?

// Solution: In Dart, an abstract class is a class that cannot be instantiated directly. It serves as a blueprint for other classes.

// Abstract classes can have abstract methods (methods without implementation) that must be implemented by concrete subclasses. 

// This allows defining a common structure or behavior that multiple classes can share.



// Concrete classes, on the other hand, are fully implemented classes that can be instantiated. 

// They can inherit from abstract classes and must provide implementations for any abstract methods.



// A mixin is a class that provides reusable functionality to other classes without requiring them to be in the class hierarchy. 

// Mixins are used to add behavior to classes but do not instantiate on their own like abstract or concrete classes.



// 2)Write a function that returns the middle vallue of a sorted list of odd lenght.

// Solution:

int getMiddleValue(List<int> sortedList) {

  if (sortedList.isEmpty) {

    throw ArgumentError('List cannot be empty');

  }

  if (sortedList.length % 2 == 0) {

    throw ArgumentError('List length must be odd');

  }

  int middleIndex = sortedList.length ~/ 2;

 return sortedList[middleIndex];

}

// void main() {

//   List<int> sortedList = [1, 3, 5, 7, 9]; 
//// NOTE: needed to sort as well;
//   print('Middle value: ${getMiddleValue(sortedList)}'); 

// }

// 3)Use'. where()' and'. reduce()' to filter numbers above 50 and calculte their sum.

// Solution:

void main() {

  List<int> numbers = [10, 75, 43, 68, 99, 25];



  // Filter numbers greater than 50

  var filtered = numbers.where((num) => num > 50);



  // Calculate the sum using reduce

  int sum = filtered.reduce((a, b) => a + b);



  print("Sum of numbers > 50: $sum");

}

// 4)Design a class 'Task' with fields and a 'complete()' method that updates task state and logs the change.

// Solution: 

class Task {

  String status = "assued";

  String name = "Task";

  String description = "task";

 



  Task(String name, String description) {

    this.name = name;

    this.description = description;

 

  }



   



  void complete() {

    status ="finished";

  }



  void Print() {

    print("name: " + name);

    print("description: " + description);

    print("status: " + status.toString());

 

  }

}