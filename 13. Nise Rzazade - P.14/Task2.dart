itest
int factorial(int n) {
  if (n < 0) {
    throw ArgumentError('Factorial is not defined for negative numbers');
  }
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}
void main() {
  int number = 5;
  print('Factorial of $number is ${factorial(number)}');
}

