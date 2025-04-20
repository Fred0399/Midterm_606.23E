class Point {
  final int x;
  final int y;

  // Constant constructor with final fields
  const Point(this.x, this.y);

  // Named constructor for the origin (0, 0)
  Point.origin() : x = 0, y = 0;
}

void main() {
  // Using the constant constructor
  const p1 = Point(3, 4);
  print("Point p1: (${p1.x}, ${p1.y})");

  // Using the named constructor for the origin
  Point p2 = Point.origin();
  print("Point p2 (origin): (${p2.x}, ${p2.y})");
}
