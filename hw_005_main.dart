import 'hw_005.dart';

void main() {
  Book book = Book.withRating('Harry Potter', 'J.K. Rowling', 9.5);
  book.displayInfo();

print('------------------------------------')
  Library lib = Library('City Library');

  Book book1 = Book('Harry Potter');
  Book book2 = Book('Sherlock Holms');

  lib.addBook(book1);
  lib.addBook(book2);
  lib.displayInfo();
}
