import 'Type.dart';

class Magazine extends Type {
  int number;
  String periodicity;

  Magazine()
      : number = 0,
        periodicity = '',
        super();

  Magazine.noDetails(int id, String title)
      : number = 0,
        periodicity = '',
        super.noDetails(id, title);

  Magazine.complete(
      int id,
      String title,
      String author,
      int year,
      bool isAvailable,
      String? dniClient,
      this.number,
      this.periodicity) : super.complete(id, title, author, year, isAvailable, dniClient);


}