import 'dart:io';
import '4_functionlibrarysystem.dart';

void main() {
  Library library = Library();

  while (true) {
    print('\nMenu Perpustakaan:');
    print('1. Tambah Buku');
    print('2. Hapus Buku');
    print('3. Tampilkan Buku Perpustakaan');
    print('4. Keluar');
    print('Pilih opsi:');
    int option = int.parse(stdin.readLineSync()!);

    if (option == 1) {
      print('Masukkan judul buku:');
      String title = stdin.readLineSync()!;
      print('Masukkan penulis buku:');
      String author = stdin.readLineSync()!;
      print('Masukkan tahun terbit:');
      int year = int.parse(stdin.readLineSync()!);
      Book book = Book(title, author, year);
      library.addBook(book);
    } else if (option == 2) {
      print('Masukkan judul buku yang ingin dihapus:');
      String title = stdin.readLineSync()!;
      library.removeBook(title);
    } else if (option == 3) {
      library.displayBooks();
    } else if (option == 4) {
      print('Terima kasih');
      break;
    } else {
      print('Opsi tidak valid.');
    }
  }
}
