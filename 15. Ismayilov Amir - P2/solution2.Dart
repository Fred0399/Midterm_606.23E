void main(){
  int? num1 = null;
  int? num2 = null;
  // I create variables that can store any integer or nothing
  int? sum =(num1 != null && num2 != null) ? num1 + num2 : null;
  //here we add variables but check if they are equal to zero with the terrary operator
  int rt = sum ?? 0;
  //if the sum is zero then it outputs the value 0 if not then it outputs the value
  print(rt);
}