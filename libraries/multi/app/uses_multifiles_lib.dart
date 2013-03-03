/// Author: Yohan Beschi
library myApp;

import '../lib/security/security.dart';
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


