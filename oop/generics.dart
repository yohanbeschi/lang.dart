/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  //---- Validator
  Validator validator = new Validator();
  bool isValid = validator.validate(new User('', ''));
  assert(isValid);
  
  //---- Validator as interface
  Validator userValidator = new LoginService();
  bool isValid2 = userValidator.validate(new User('', ''));
  assert(!isValid2);
  
  bool isValid3 = userValidator.validate(new User('Foo', r'pa$$word'));
  assert(isValid3);
  
  //---- Check as inteface
  Processor processor = userValidator as Processor;
  bool processed = processor.process(new User('not', 'found'));
  assert(!processed);
  
  processed = processor.process(new User('root', 'secure'));
  assert(processed);
  
  //---- Full Login
  User user = new User('root', 'secure');
  LoginService login = new LoginService();
  assert(login.validate(user));
  assert(login.process(user));
}

abstract class Validatable {
  List<Object> valuesToValidate();
}

class Validator<T extends Validatable> {
  bool validate(T object) {
    for (Object obj in object.valuesToValidate()) {
      if (StringUtils.isEmpty(obj.toString())) {
        return false;
      }
    }
    
    return true;
  }
}

class User implements Validatable {
  String username;
  String password;
  
  User(this.username, this.password);
  
  List<Object> valuesToValidate() {
    return [username, password];
  }
}

abstract class Processor<T> {
  bool process(T t);
}

class LoginService implements Validator<User>, Processor {
  static List<User> USERS_DB = [new User('root', 'secure')];
  
  bool validate(User user) {
    if (StringUtils.isBlank(user.password)) {
      return false;
    } 
    
    if (StringUtils.isBlank(user.username)) {
      return false;
    }
    
    return true;
  }
  
  bool process(User user) {
    if (LoginService.contains(USERS_DB, user)) {
      return true;
    } else {
      return false;
    }
  }
  
  static bool contains(Collection<User> users, User user) {
    for (User u in users) {
      if (u.username == user.username
          && u.password == user.password) {
        return true;
      }
    }
    
    return false;
  }
}

class StringUtils {
  static bool isEmpty(String s) {
    return s == null;
  }
  
  static bool isNotEmpty(String s) {
    return !StringUtils.isEmpty(s);
  }
  
  static bool isBlank(String s) {
    return StringUtils.isEmpty(s) || s.length == 0;
  }
  
  static bool isNotBlank(String s) {
    return !StringUtils.isBlank(s);
  }
}