class Book {
  String _title;
  String _author;
  double? _rating;

  Book(this._title, this._author);
  Book.withRating(this._title, this._author, this._rating);

  String get title {
    return _title;
  }

  String get author {
    return _author;
  }

  double? get rating {
    return _rating;
  }

  set rating(double value) {
    if (value >= 0 && value <= 10) {
      _rating = value;
    }
  }

  void displayInfo() {
    print('Author: $author');
    print('Title: $title');
    print('Rating: $rating');
  }
}

class Library {
  String name;
  List<Book> _books = [];
}

Library(this.name);

void addBook(Book b) {
  addBook(b);
};
void showBooks() {
  print('Library: $name');
  print('Books list');

  for(int i = 0; i < _books.length; i++) {
    print('${i + 1}. ${_books[i].title}'); 
  }
}; 