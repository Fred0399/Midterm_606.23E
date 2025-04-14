//task 1:
/* difference between a for foreach while loops in dart.
 * for loop: is used for looping on an array or a list and visit every value on list, this function can also be done by .map() function. 
 * it is useful when we need an index or an iteration count.
 * time complexity is O(n) for a single loop.
 * ForEach method is useful for applying an action to each element. O(n) time complexity for a single pass. it is great when we dont need an index.
while: runs when a condition is true. otherwise, while body is skipped. it should be used carefully, because infinite loop is possible. Time complexity can change.
*/
//task 2
bool isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      return year % 400 == 0;
    } else {
      return true;
    }
  } else {
    return false;
  }
}
void main(){
  int year1 = 2006;
  int year2 = 2023;
  int year3 = 1900;
  int year4 = 2000;
  print('$year1 is a leap year: ${isLeapYear(year1)}');
  print('$year2 is a leap year: ${isLeapYear(year2)}');
  print('$year3 is a leap year: ${isLeapYear(year3)}');
  print('$year4 is a leap year: ${isLeapYear(year4)}');

}
