import 'Type.dart';

class Book extends Type{
  late int pages;
  late String genre;


  Book(this.pages, this.genre) : super.noArguments();

}