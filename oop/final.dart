/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  //---- Using final
  final Object object = new Object();
  //object = new Object(); => Error: line (x) pos (y): left hand side of '=' is not assignable
  
  //---- The variable can't change instance but its fields can
  final User user = new User('Foo', 'Bar');
  assert('Foo' == user.firstName);
  assert('Bar' == user.lastName);
  
  user.firstName = 'aaa';
  user.lastName = 'bbb';
  
  assert('aaa' == user.firstName);
  assert('bbb' == user.lastName);
  
  //---- The variable can't change instance but its fields can
  final ImmutableUser immutableUser = new ImmutableUser('FooFoo', 'BarBar');
  assert('FooFoo' == immutableUser.firstName);
  assert('BarBar' == immutableUser.lastName);
  
  //immutableUser.firstName = 'aaa'; => firstName is final, therefore can't be changed
  //immutableUser.lastName = 'bbb'; => lastName is final, therefore can't be changed
  
  //---- Using pre-initialisation
  final ImmutableUser immutableUserDefault = new ImmutableUser.withDefault();
  assert('FooBar' == immutableUserDefault.firstName);
  assert('BarFoo' == immutableUserDefault.lastName);
}

class User {
  String firstName;
  String lastName;
  
  User(String this.firstName, String this.lastName);
}

class ImmutableUser {
  final String firstName;
  final String lastName;
  
  ImmutableUser.withDefault() 
    : this.firstName = 'FooBar',
      this.lastName = 'BarFoo';
  
  ImmutableUser(String this.firstName, String this.lastName);
}