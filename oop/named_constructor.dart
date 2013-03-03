/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Person personUnknown = new Person();
  assert(' ' == personUnknown.getFullName());
  
  Person personInitialized = new Person.withNames('Foo', 'Bar');
  assert('Foo Bar' == personInitialized.getFullName());
}

class Person {
  String firstName = '';
  String lastName = '';

  Person();
  Person.withNames(String this.firstName, String this.lastName);
  
  String getFullName() {
    return '$firstName $lastName';
  }
}