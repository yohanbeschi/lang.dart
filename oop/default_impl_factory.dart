/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Validator validator = new Validator();
  bool isValid = validator.validate(new User('', ''));
  assert(isValid);
}

abstract class Validator {
  
  factory Validator() {
    return new NoneBlankValidator(); 
  }
  
  bool validate(DynaBean dynaBean);
}

class NoneBlankValidator implements Validator {
  bool validate(DynaBean dynaBean){
    for (Object obj in dynaBean.getValues()) {
      if (StringUtils.isEmpty(obj)) {
        return false;
      }
    }
    
    return true;
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