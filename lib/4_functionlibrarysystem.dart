class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Buku "${book.title}" berhasil ditambahkan.');
  }

  void removeBook(String title) {
    bool bookExists = books.any((book) => book.title == title);
    if (bookExists) {
      books.removeWhere((book) => book.title == title);
      print('Buku "$title" berhasil dihapus.');
    } else {
      print('Mohon maaf buku yang ingin anda hapus tidak tersedia di perpustakaan.');
    }
  }

  void displayBooks() {
    if (books.isEmpty) {
      print('Tidak ada buku di perpustakaan.');
    } else {
      print('Daftar Buku:');
      for (var book in books) {
        print('${book.title} - ${book.author} (${book.year})');
      }
    }
  }
}
