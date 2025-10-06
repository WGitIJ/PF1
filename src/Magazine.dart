import 'Type.dart';

class Magazine extends Type {
  late int number;
  late String periodicity;

  Magazine(this.number, this.periodicity) : super.noArguments();
}