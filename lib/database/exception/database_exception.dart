class DatabaseException implements Exception{
  final int code;
  final String? message;

  DatabaseException(this.code, [this.message]);

  @override
  String toString() {
    return '''Database Exception
    code"$code
    message:$message
    ''';
  }
}

class DatabaseExceptionCodes{
  static const int insertEmployees = 1;
}