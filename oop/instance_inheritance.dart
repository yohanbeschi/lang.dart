/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  //---- Type is Type
  assert(Person is Object);
  assert(Developer is Object);
  
  //---- Instance is Type
  assert(new Person() is Object);
  assert(new Developer() is Object);
  assert(new Developer() is Person);
  assert(!(new Person() is Developer));
  
  //---- Child access to parent fields and methods
  Developer developer = new Developer();
  developer.firstName = 'Foo';
  developer.lastName = 'Bar';
  developer.language = 'Dart';
  assert('Foo Bar' == developer.getFullName());
  assert('Foo Bar knows Dart' == developer.getNameAndLanguage());
}

class Person {
  String firstName;
  String lastName;

  String getFullName() {
    return '$firstName $lastName';
  }
}

class Developer extends Person {
  String language;

  String getNameAndLanguage() {
    return '${this.getFullName()} knows $language';
  }
}