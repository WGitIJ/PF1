abstract class Type {
  int id;
  String title;
  String author;
  int year;
  bool isAvailable;
  String? dniClient;

  //Constructor por defecto
  Type()
      : id = 0,
        title = '',
        author = '',
        year = 0,
        isAvailable = false,
        dniClient = null
  ;

  // Constructor con id y titulo
  Type.noDetails(this.id, this.title)
      : author = '',
        year = 0,
        isAvailable = false,
        dniClient = null
  ;

  Type.complete(this.id, this.title, this.author, this.year, this.isAvailable, this.dniClient);

  //Getters y Setters
  // No hace falta crear getters y setters ya que no hay atributos privados


  @override
  String toString() {
    return 'Type{id: $id, title: $title, author: $author, year: $year, isAvailable: $isAvailable, dniClient: $dniClient}';
  }

  void borrow(String dni){
    isAvailable = true;
    dniClient = dni;
  }

  void giveBack(){
    isAvailable = false;
    dniClient = null;
  }

  bool stateBook()=> isAvailable;

  // int compareTo(Type other){
  //   if(this.hashCode == other.hashCode){
  //     return year.compareTo(other);
  //   } else{
  //     return ("Solo se pueden comparar libros con el mismo hashCode").hashCode;
  // }

}

