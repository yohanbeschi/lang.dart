/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Person person = new Person('Foo', 'Bar');

  assert('Foo' == person.firstName);
  assert('Bar' == person.lastName);
  assert('Foo Bar' == person.getFullName());
  
  person.firstName = 'FooFoo';
  person.lastName = 'BarBar';
  assert('FooFoo BarBar' == person.getFullName());
}

class Person {
  String firstName;
  String lastName;

  Person(String firstName, String this.lastName) {
    this.firstName = firstName;
  }
  
  String getFullName() {
    return '$firstName $lastName';
  }
}