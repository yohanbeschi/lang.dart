/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Person person = new Person();
  assert(null == person.firstName);
  assert(null == person.lastName);
  
  person.firstName = 'Foo';
  person.lastName = 'Bar';
  
  assert('Foo' == person.firstName);
  assert('Bar' == person.lastName);
  assert('Foo Bar' == person.getFullName());
}

class Person {
  String firstName;
  String lastName;
  
  String getFullName() {
    return '$firstName $lastName';
  }
}