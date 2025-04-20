// 1.Answer
//A closure is a function object that has access to variables in its lexical scope, even when the function is used outside of that scope. Closure is a special function also called lambda expression In simpler terms, it's a function that remembers the environment in which it was created.
//Closures are particularly useful in several scenarios:

//Callbacks in asynchronous operations
//Event handlers
//Implementing private variables
//Creating function factories 
//Closures are a fundamental concept in Dart programming. They provide a way to create more flexible and powerful functions by allowing them to access their surrounding lexical scope. By mastering closures, you can write more efficient and elegant Dart code
// When a function is defined inside another function, it can access the local variables of its enclosing function. Dart keeps these variables alive by creating a structure that holds them in memory until the closure is no longer needed. This means the inner function “closes over” the outer variables, hence the name closure.So,even if the outer function is done running, the inner function can still access and use the variables it captured.This is especially powerful for callbacks and asynchronous programming.




//2.Answer
String reversedString(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {    //for each (lets say) element in there
    reversed = reversed+input[i];                 //and add each element to empty reversed one
  }
  return reversed;
}

// void main() {
//   String main = "SHINE BRIGHT LIKE A DIAMOND";
//   String reversed = reversedString(main);
//   print("Original: $main");
//   print("Reversed: $reversed");
// }


//3.Answer

class Notification {
  String title;
  String message;

  Notification(this.title, this.message);  

  void send() {
    print('Notification: $title\nMessage: $message');
  }
}

// void main() {
//   Notification notification = Notification('Incendies', 'Movie name');
//   notification.send();
// }


//4.Answer
mixin Sharable {
  void share(String platform) {
    print('Sharing on $platform...');
  }
}

// Define the Document class which uses the Sharable mixin
class Document with Sharable {
  String title;
  String content;

  Document(this.title, this.content);

  void showDocument() {
    print('Title: $title\nContent: $content');
  }
}

void main() {
  // Create a new Document
  Document doc = Document('Dart', 'Learn from Tutorialpoints.');

  // Show the document details
  doc.showDocument();

  // Share the document on different platforms
  doc.share('Twitter');
  doc.share('Facebook');
  doc.share('LinkedIn');
}




 