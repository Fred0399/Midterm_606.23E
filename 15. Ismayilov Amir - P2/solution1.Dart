//The where() method is used to display elements from a sheet with a given condition.
void main(){
  List<int> numbers = [1,2,3,4,5];
  var evenumb = numbers.where((n) => n%2 ==0).toList;
  print(evenumb);
}

//The map() method is used for represents a key-value pair data structure 

void main(){
  List<int> numbers = [1,2,3,4,5];
  var evenumb = numbers.map((n) => n * n).toList();
  print(evenumb);
}