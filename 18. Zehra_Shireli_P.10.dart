// Task 1:

// Named parameters are optional unless they're explicitly marked as required. When defining a function, we use {param1, param2, …} to specify named parameters.

// We use named parameters for:
// If a function uses positional parameters, when calling it, we need to provide the arguments that follow the order of the parameters. To resolve this, we can use named parameters that make the meaning of parameters clear in the function calls.

// Positional parameters are the traditional way of passing arguments to a function. They are defined in the function declaration and passed into the function in the same order when calling the function.
//Example for named parameters: void named ({int? a, int? b}){};

//Example for positional parameters: void positional(int a, int b){};

// If we don't provide a default value or mark a named parameter as required, their types must be nullable as their default value will be null.


/// NOTE: 2 is also prime number but your code does not print this;
// Task 2:
// void main() {
//   for (int number = 0; number < 51; number++) {
//     int count = 0;
//     for (int i = 2; i < number; i++) {
//       if (number % i == 0) {
//         count++;
//         break;
//       }

//       if (count == 0 && number != 1) {
//         print("number: $number");
//       }
//     }
//   }
// }

// Task 3:

void avarage(List<double> numbers) {
  var avarageF = numbers.reduce((a, b) => a + b);
  avarageF = avarageF / numbers.length;
  print(avarageF);
}

// void main(){

//   avarage([1.5,2,3,4,5]);

// }

// Taask 4:

mixin CanFly {
  void canFly(bool test) {
    if (test = true) {
      print("true");
    } else {
      print("false");
    }
  }
}

class Rocket with CanFly {
  int? cargoWeight;
  int? TotalWeight;

  Rocket(int cargoWeight, int TotalWeight) {
    this.cargoWeight = cargoWeight;
    this.TotalWeight = TotalWeight;
  }

  void launch() {
    /// NOTE: this logic should've been implemented inside a function of mixin;
    if (cargoWeight! < 50 && TotalWeight! < 900) {
      print("It's okay");

      canFly(true);
    } else {
      print("Not flying");
      canFly(false);
    }
  }
}

void main(){
  var rocket = Rocket(50,300);
  rocket.launch();

}
