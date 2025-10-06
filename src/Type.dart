abstract class Type {
  late int id;
  late String title;
  late String author;
  late int year;
  late bool isAvailable;
  String? dniClient;

  Type.noArguments();

  Type.idAndTitle({
    required this.id,
    required this.title
  });

  Type.full({
    required this.id,
    required this.title,
    required this.author,
    required this.year,
    required this.isAvailable,
    this.dniClient,
  }){
    this.isAvailable = false;
  }

  @override
  String toString() {
    return 'Type{id: $id, title: $title, author: $author, year: $year, isAvailable: $isAvailable, dniClient: $dniClient}';
  }

  void borrow(String dni){
    this.isAvailable = true;
    this.dniClient = dni;
  }

  void giveBack(){
    this.isAvailable = false;
    this.dniClient = null;
  }

  String isBorroed(){
    late String isBorroed;
    if(this.isAvailable == true){
      isBorroed = "The item is borrowed by the client with DNI: $dniClient";
    } else {
      isBorroed = "The item is available";
    }
    return isBorroed;
  }

  int  compareTo(Type type) {
    if(this.hashCode == type.hashCode){
      return 0;
    } else {
      return 1;
    }
  }

}
