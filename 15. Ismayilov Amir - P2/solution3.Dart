String calculateBMI(double weightKg, double heightMeters){
  double bmi = weightKg / (heightMeters * heightMeters);
   if (bmi < 18.5){
     return 'Underweight';
   }
  else if (bmi >= 18.5 && bmi < 24.9){
    return 'normal';
  }
  else if (bmi >= 25 && bmi == 29.9){
    return 'Overweight';
  }
  else {
    return'Obese';
  }
}


void main(){
  double weight = 70;
  double height = 1.75;
  
  String category = calculateBMI(weight, height);
  print (category);
  
}