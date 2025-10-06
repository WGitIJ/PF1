import 'Type.dart';

class Book extends Type {
  late int pages;
  late String genre;

  Book()
      : pages = 0,
        genre = ' ',
        super();


  Book.noDetails(int id, String title)
      : pages = 0,
        genre = ' ',
        super.noDetails(id, title);

  Book.complete(
      int id,
      String title,
      String author,
      int year,
      bool isAvailable,
      String? dniClient,
      this.pages,
      this.genre) : super.complete(id, title, author, year, isAvailable, dniClient);

  @override
  String toString() {
    return 'Book{pages: $pages, genre: $genre}';
  }


}