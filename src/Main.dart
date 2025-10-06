import 'Book.dart';
import 'Client.dart';
import 'Magazine.dart';

void main(){
  List<Book> books = [];
  List<Magazine> magazines = [];

  books.add(Book());
  books.add(Book.complete(1, "Title 1", "Author 1", 2001, false, null, 100, "Genre 1"));
  books.add(Book.noDetails(2, "Title 2"));
  books.add(Book.complete(3, "Title 3", "Author 3", 2003, true, "12345678A", 300, "Genre 3"));
  books.add(Book.noDetails(4, "Title 4"));
  books.add(Book.complete(5, "Title 5", "Author 5", 2005, false, null, 500, "Genre 5"));

  magazines.add(Magazine());
  magazines.add(Magazine.noDetails(1, "Magazine 1"));
  magazines.add(Magazine.complete(2, "Magazine 2", "Author 2", 2022, true, "87654321B", 10, "Monthly"));
  magazines.add(Magazine.noDetails(3, "Magazine 3"));
  magazines.add(Magazine.complete(4, "Magazine 4", "Author 4", 2024, false, null, 20, "Weekly"));

  Client client1 = Client.withEssentials(fullName: "Wisdom Imade", DNI: "12345678A");
  Client client2 = Client(fullName: "Jane Doe", dni: "87654321B", email: "janedoe@gmail.com", phoneNumber: "987654321", libraryCardNum: 1001);

  // print("Books:");
  // for (var book in books) {
  //   print(book);
  // }

  books[1].borrow(client1.dni);
  print("After borrowing Book 1:");
  print(books[1]);
  print(books[1].stateBook());

  // Compta quants llibres i quantes revistes hi ha prestades i digues quants tipus hi ha prestats en total.
  int contador = 0;
  for (var book in books) {
    if(book.stateBook() == true){
      contador++;
    }
  }
  print('Number of borrowed books: $contador');

  // Indica quin llibre és el més antic (any de publicació més baix) i quina revista és la més recent. Mostra’ls per pantalla amb tota la seva informació (toString())
  Book? oldestBook;
  Magazine? newestMagazine;

  for (var book in books) {
    if (oldestBook == null || book.year < oldestBook.year) {
      oldestBook = book;
    }
  }

  for (var magazine in magazines) {
    if (newestMagazine == null || magazine.year > newestMagazine.year) {
      newestMagazine = magazine;
    }
  }

  print('Oldest Book: $oldestBook');
  print('Newest Magazine: $newestMagazine');

}