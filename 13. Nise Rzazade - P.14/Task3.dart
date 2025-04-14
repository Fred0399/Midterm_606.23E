itest
class Book {
  String title;
  String author;


  Book(this.title, this.author);


  Book.untitled()
      : title = 'Untitled',
        author = 'Unknown';

  void display() {
    print('Title: $title');
    print('Author: $author');
  }
}

void main() {

  Book customBook = Book('My Sweet Orange Tree', 'José Mauro de Vasconcelos.');
  customBook.display();

  print('\n');


}
