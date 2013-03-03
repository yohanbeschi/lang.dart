part of security;

class LoginService implements Validator<User>, Processor {
  static List<User> _USERS_DB = [new User('root', 'secure')];
  
  bool validate(User user) {
    if (isBlank(user._password)) {
      return false;
    } 
    
    if (isBlank(user._username)) {
      return false;
    }
    
    return true;
  }
  
  bool process(User user) {
    if (_USERS_DB.contains(user)) {
      return true;
    } else {
      return false;
    }
  }
}