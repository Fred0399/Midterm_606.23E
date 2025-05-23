/* 1
 *fold: Takes an initial value and combines it with the first element using the provided operation, then continues with the rest of the collection. reduce: Begins by applying the operation to the first two elements of the collection, then carries forward the result as it processes the entire collection. And also reduce can only be used on non-empty collections with functions that returns the same type as the types contained in the collection. fold can be used in all cases.
 */
/// NOTE: better answer is possible;
// 2
// the function cubeOfNumber returning the cube of the number
int cubeOfNumber(int n) => n * n * n;
// 4
// creating the mixin with canFly method
mixin CanFly{
  void canfly(){
    print("Flying....");
  }
}
// creating the class Bird with methods fly and chirip
class Bird with CanFly{
  void fly(){
    canfly();
  }
  void chirip(){
    print("chirip chirip....");
  } 
  
}
void main(){
  // 2
  int n = 4;
  // calling the fuction cubeOfNumber
  print(cubeOfNumber(n));
  // 3
  // creating the list with integer numbers
  List<int> list = [1, 2, 3, 4, 5, 7];
  // applying the fold method for list
  var sumOfList = list.fold(10, (a, b) => a + b);
  // print the result
  print(sumOfList);
  // 4
  // creating the instance of Bird class
  var bird = Bird();
  // calling its methods
  bird.fly();
  bird.chirip();
  
}