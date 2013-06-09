/// Author: Yohan Beschi
import 'dart:mirrors';

/**
 * Entry Point 
 */
void main() {
  User user = new User({'username' : 'Foo', 'password' : 'secret'});
  assert('Foo' == user.username);
  assert('secret' == user.password);
  
  user.password = r'newPa$$word';
  assert(r'newPa$$word' == user.password);
  
  user.firstname = 'Bar';
  assert('Bar' == user.firstname);
}

class User extends DynaBean {
  User(Map<String, Object> user) : super(user);
}

abstract class DynaBean {
  Map<String, Object> map;
  
  DynaBean(this.map);
  
  dynamic noSuchMethod(Invocation invocation) {
    if (invocation.isGetter) {
      Symbol symbol = invocation.memberName;
      String getterName = MirrorSystem.getName(symbol);
      return this.map[getterName];
    } else if (invocation.isSetter) {
      Symbol symbol = invocation.memberName;
      String setterName = MirrorSystem.getName(symbol).replaceAll('=', '');
      this.map[setterName] = invocation.positionalArguments[0];
    } else {
      super.noSuchMethod(invocation);
    }
  }
}

