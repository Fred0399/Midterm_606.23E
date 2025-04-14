/* Task 3

Kanan Sultanov Emil Problem 11 606.23E

Create a function that filters out numbers less than 50 from a list and returns the result. [5 points]
*/

void Filtered50(List<int> x) {                 //As an input to the function I give the list of integers
  var filtered = x.where((n) => n  < 50);      // Using .where() I will filter the numbers that are less than 50
  print(filtered);                             //Printing the result
}

void main() {
  List<int> a = [- 890, - 1, 23,56, 67, 89, 67, 12, 34, 50, 51, 49, 4580];   //Example of the list
  Filtered50(a);
}