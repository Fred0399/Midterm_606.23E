class Circle {
  final pi = 3;
  const Circle();
  Area(int r) {
    print(pi * r * r);
  }
}
/// NOTE: Better implementation should be done;
// First of all, pi-> should have been imported from dart math, as it provides more accurate value of it;
// Second, the radius of Circle should be defined as a field of Circle class, rather than sending inside function;
// Better implementation:
/* 
import "dart:math";

class Circle {
  final int r;

  const Circle(this.r);

  Area() {
    print(pi * r * r);
  }
}

void main(){
  var circlee= Circle(4);
  circlee.Area();
}
*/