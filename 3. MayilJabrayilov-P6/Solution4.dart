import 'dart:math';

mixin Sharable {
  String generateShareableLink(String content) {
    // Simulate generating a unique link for sharing
    final hashCode = content.hashCode;
    final random = Random();
    final randomNumber = random.nextInt(1000);

    return 'https://example.com/share/$hashCode/$randomNumber';
  }

  void share(String content, String platform) {
    final shareableLink = generateShareableLink(content);
    print('Sharing "$content" on $platform via link: $shareableLink');
  }
}

class Document with Sharable {
  String title;
  String content;

  Document({required this.title, required this.content});

  void printDocument() {
    print('Title: $title');
    print('Content: $content');
  }

  void shareDocument(String platform) {
    share(content, platform);
  }
}

void main() {
  final myDocument = Document(
    title: 'My Important Document',
    content: 'This is the content of my important document.',
  );

  myDocument.printDocument();
  myDocument.shareDocument('Twitter');
  myDocument.shareDocument('Facebook');

  final anotherDocument = Document(
    title: 'Secret Plans',
    content: 'Details of my secret plans...',
  );

  anotherDocument.shareDocument('Encrypted Email');
}