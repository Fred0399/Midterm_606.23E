class Notification {
  String title;
  String message;

  Notification({required this.title, required this.message});

  String send() {
    return " $title\n $message";
  }
}

void main() {
  final notification = Notification(
    title: "Important Update",
    message: "A new version of the application is available.",
  );

  print(notification.send());
}