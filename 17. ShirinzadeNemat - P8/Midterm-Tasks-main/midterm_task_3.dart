void main(){
DisplayStudentName(name: 'Nemat');
}

void DisplayStudentName({required String name,
int age=18,
String University='ADNSU',
}){
  print('Student name: $name');
  print('age: $age');
  print('University: $University');
}