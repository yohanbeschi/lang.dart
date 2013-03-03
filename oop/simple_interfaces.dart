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

class Validator {
  bool validate(DynaBean dynaBean) {
    for (Object obj in dynaBean.getValues()) {
      if (StringUtils.isEmpty(obj)) {
        return false;
      }
    }
    
    return true;
  }
}

abstract class Processor {
  bool process(DynaBean dynaBean);
}

class LoginService implements Validator, Processor {
  static List<User> USERS_DB = [new User('root', 'secure')];
  
  bool validate(User user) {
    if (StringUtils.isBlank(user.get(User.ps))) {
      return false;
    } 
    
    if (StringUtils.isBlank(user.get(User.us))) {
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
      if (u.get(User.us) == user.get(User.us)
          && u.get(User.ps) == user.get(User.ps)) {
        return true;
      }
    }
    
    return false;
  }
}

abstract class DynaBean {
  Map<String, Object> map;
  
  DynaBean() {
    this.map = new Map();
  }
  
  Object get(String key) => this.map[key];
  
  Object set(String key, String value) => this.map[key] = value;
  
  Iterable<Object> getValues() => this.map.values;
}

class User extends DynaBean {
  static final String us = 'username';
  static final String ps = 'password';
  
  User.empty() : super() {}
  
  User(String username, String password) : super() {
    this.map[us] = username;
    this.map[ps] = password;
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