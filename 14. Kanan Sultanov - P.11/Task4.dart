/* Task 4

Kanan Sultanov Emil Problem 11 606.23E

Define a class Person with a mixin AgeCalculator that computes age from birth year. [8 points]
*/

mixin AgeCalculator {            //Creating mixin where input will be birthyear integer
  Age(int birthyear) {
    // How your code will work in 2026? 
    return 2025 - birthyear;     //Subtracting the birthyear from current year 2025.


    // NOTE: better version: DateTime.now().year - birthyear
    /// DateTime.now().year -> finds current year;
  }
}

//Creating the class Person
class Person with AgeCalculator{   //'with' means referencing to mixin AgeCalculators
  String name;
  String surname;
  int birthyear;

  //Named constructor to implement multiple constructors for a class.
  Person(this.name, this.surname, this.birthyear);
}

void main() {
  //Inserting the data into class
  var Kanan = Person('Kanan', 'Sultanov', 2006);
  //Twilight characters
  var Bella = Person('Bella', 'Swon', 1999);
  var Edward = Person('Edward', 'Cullen', 1860);
  var Aro = Person('Aro', 'Volturi', 120);
  
  print(Bella.Age(Bella.birthyear));
  print(Aro.Age(Aro.birthyear));
}