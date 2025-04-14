/* Task 1

Kanan Sultanov Emil Problem 11  606.23E

What is the purpose of the ‘this’ keyword in Dart classes? Provide an example of resolving game conflicts using ‘this’.

In Dart we can declare a constructor by creating a function with the same name as its class.
There are 6 constructors and the most common form of constructor, the generative constructor, creates a new instance of a class.
I will create a simple class to explain this.

Since the names of the constructor arguments and class variables are identical, we must explicitly,
through a reference to the current class instance - this, indicate to which variable the value of which constructor argument is assigned.
\If the names of the class variables and constructor arguments differ, the constructor can be declared as follows:
*/

class Point {
  int? x;
  int? y;
  Point(int x, int y) {
    this.x = x;           // The this keyword refers to the current instance.
    this.y = y;
  }
}

// Example of resolving game conflicts using ‘this’.
class Point2 {
  int? x;
  int? y;
  Point2(this.x, this.y);  //This keyword can allow us to create equal variables in separate class
                           //It means that we referencing into variable in our class.
}

void main() {
  var A = Point(12, 34);
  var B = Point(45, 67);

  var C = Point2(56, 40);
  var D = Point2(78, 90);

  print(A.x);

  print(C.y);

}

