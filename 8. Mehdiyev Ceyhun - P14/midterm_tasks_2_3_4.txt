//  This code contains solutions for tasks 2-4 from the midterm with examples

void main() {
  
  //  Examples for solution 2
  print("\n\t\tSolution 2\n");
  
  print("Factorial of 1 is ${factorial(1)}");
  print("Factorial of 2 is ${factorial(2)}");
  print("Factorial of 3 is ${factorial(3)}");
  print("Factorial of 4 is ${factorial(4)}");
  
  //  Examples for solution 3
  print("\n\t\tSolution 3\n");
  
  Book titledBook = new Book("1984", "George Orwell");
  print("Title: ${titledBook.title}\nAuthor: ${titledBook.author}\n");
  
  Book untitledBook = new Book.untitled();
  print("Title: ${untitledBook.title}\nAuthor: ${untitledBook.author}");
  
  //  Examples for solution 4
  //  Sorry for the .. I just love this syntax
  print("\n\t\tSolution 4\n");
  
  Car mazdaMiata = new Car()
    ..start()
    ..stop();
  
  Bike mountainBike = new Bike()
    ..start()
    ..stop();
  
}

//  Solution 2

int factorial(int x) {
  
  int result = x;
  for (int i = x-1; i > 1; i--) {
    result *= i;
  }
  return result;
}

//  Solution 3

class Book{
  
  final String title;
  final String author;
  
  Book(this.title, this.author);
  
  Book.untitled() : title = "untitled", author = "unknown";
}

//  Solution 4

abstract class Vehicle {
  
  int? speed;
  
  void start();
  
  void stop();
}

class Car implements Vehicle{
  
  int? speed = 0;
  
  void start() {
    speed = 60;
    print("Car is moving fast at $speed kmph");
  }
  
  void stop() {
    speed = 0;
    print("Car is stopping");
  }
}

class Bike implements Vehicle{
  
  int? speed = 0;
  
  void start() {
    speed = 15;
    print("Bike is moving slow at $speed kmph");
  }
  
  void stop() {
    speed = 0;
    print("Bike is stopping");
  }
}
