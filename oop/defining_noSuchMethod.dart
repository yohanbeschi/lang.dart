/// Author: Yohan Beschi

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
  
  dynamic noSuchMethod(InvocationMirror invocation) {
    if (invocation.isGetter) {
      return this.map[invocation.memberName];
    } else if (invocation.isSetter) {
      String setterName = invocation.memberName.replaceFirst('=', '');
      this.map[setterName] = invocation.positionalArguments[0];
    } else {
      super.noSuchMethod(invocation);
    }
  }
}

