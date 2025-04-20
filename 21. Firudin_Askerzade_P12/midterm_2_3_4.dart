/////////////////////////////////////////////////////////////////////

//2

/////////////////////////////////////////////////////////////////////

double midValue(List<double> list) {
  list.sort();
  int index = (list.length / 2).toInt();
  return list[index];
}

/////////////////////////////////////////////////////////////////////

//3

/////////////////////////////////////////////////////////////////////

double sumOfNumMoreThan50(List<double> list) {
  list = list.where((n) => n > 50).toList();
  if (list != null) {
    var sum = list.reduce((a, b) => a + b);
    return sum;
  }
  return 0;
}

/////////////////////////////////////////////////////////////////////

//4

/////////////////////////////////////////////////////////////////////

enum Status { assued, inProgress, finished, canceled }

class Task {
  Status status = Status.assued;
  String name = "Task";
  String description = "task";
  DateTime? deadline;

  Task(String name, String description, DateTime deadline) {
    this.name = name;
    this.description = description;
    this.deadline = deadline;
  }

  void start() {
    status = Status.inProgress;
  }

  void cancel() {
    status = Status.canceled;
  }

  void complete() {
    status = Status.finished;
  }

  void Print() {
    print("name: " + name);
    print("description: " + description);
    print("status: " + status.toString());
    print("deadline: " + deadline.toString());
  }
}
          
          

/////////////////////////////////////////////////////////////////////////

//MAIN

void main() {
  List<double> list = [1, 2, 3, 4, 5, 1, 7, 60, 51, 55];
  print(midValue(list));
  print(sumOfNumMoreThan50(list));
  Task task1 = new Task(
    "food",
    "eat smth",
    DateTime.now().add(const Duration(hours: 3)),
  );
  task1.Print();
  task1.start();
  task1.Print();
  task1.complete();
  task1.Print();
}
