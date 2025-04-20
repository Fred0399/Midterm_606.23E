// Explanation;

// Shape is an abstract class, meaning it cannot be instantiated.
// •area() is an abstract method, so any subclass must implement it.
// •Triangle implements area() using the formula for the area of a triangle: 0.5 * base * height.

// Abstract class
abstract class Shape {
  double area(); // Abstract method
}

// Subclass implementing the abstract class
class Triangle extends Shape {
  final double base;
  final double height;

  Triangle(this.base, this.height);

  @override
  double area() {
    return 0.5 * base * height;
  }
}

void main() {
  Triangle triangle = Triangle(10, 5);
  print('Area of triangle: ${triangle.area()}');
}