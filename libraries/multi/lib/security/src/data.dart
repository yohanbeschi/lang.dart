part of security;

class User implements Validatable {
  final String _username;
  final String _password;
  
  User(this._username, this._password);
  
  String get username => this._username;
  
  List<Object> valuesToValidate() {
    return [_username, _password];
  }
  
  bool operator ==(User other) {
    if (other == null) return false;
    if (this.username != other.username) return false;
    if (this._password != other._password) return false;
    return true;
  }
}