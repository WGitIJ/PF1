class Client {
  late String _dni;
  late String fullName;
  String? email;
  String? phoneNumber;
  int? libraryCardNum;

  Client.withEssentials({required String fullName ,required String DNI}){
    this.fullName = fullName;
    this._dni = DNI;
    this.email = '';
    this.phoneNumber = '';
    this.libraryCardNum = null;
  }

  Client({
    required String fullName,
    required String dni,
    this.email,
    this.phoneNumber,
    this.libraryCardNum,
  }) {
    this.fullName = fullName;
    this._dni = dni;
  }

  String get dni => _dni;

  set dni(String value) {
    _dni = value;
  }

  @override
  String toString() {
    return 'Client{_dni: $_dni, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, libraryCardNum: $libraryCardNum}';
  }
}
