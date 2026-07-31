

void main() {
  Book book = Book.withRating('Harry Potter', 'J.K. Rowling', 9.5);
  book.displayInfo();

print('------------------------------------')
  Library lib = Library('City Library');

  Book book1 = Book('Harry Potter');
  Book book2 = Book('Sherlock Holms');

  lib.addBook(book1);
  lib.addBook(book2);

  lib.showInfo();

  Book book3 = Book('Le Petit Prince');
  Book book4 = Book.withRating('Madame Bovary', 9.8);
  Book book5 = Book('A la recherche du temps perdu');
  book5.rating = 9.1;

  Library cityLib = Library('City Library');

cityLib.addBook(book3);
cityLib.addBook(book4);
cityLib.addBook(book5);

cityLib.showInfo();

print('total books in library: $cityLib.Length'); 

}