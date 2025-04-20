// itest
abstract class Vehicle {
  void start(); 
}


class Car implements Vehicle {
  @override
  void start() {
    print('Car engine started.');
    print('Climate control activated.');
    print('Automatic doors locked.');
  }
}

class Bike implements Vehicle {
  @override
  void start() {
    print('Bike engine started.');
    print('Helmet is worn.');
    print('Tire pressure checked.');
  }
}

void main() {
  Vehicle myCar = Car();
  Vehicle myBike = Bike();

  print('- Starting Car -');
  myCar.start();

  print('\n- Starting Bike -');
  myBike.start();
}
