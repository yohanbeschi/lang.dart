/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Developer empty = new Developer.empty();
  assert('No Name' == empty.getFullName());
  
  Developer developer = new Developer('Foo', 'Bar');
  assert('Foo Bar' == developer.getFullName());
}

class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);
  
  Person.broken(this.firstName);
  
  String getFullName() {
    return '$firstName $lastName';
  }
}

class Developer extends Person {
  String language;

  Developer.empty() : super('No', 'Name');
  
  Developer(String firstName, String lastName) : super(firstName, lastName);
  
  Developer.repaired(String firstName, String lastName) : super.broken(firstName) {
    this.lastName = lastName;
  }
  
  Developer.full(String firstName, String lastName, String this.language) : super(firstName, lastName);
  
  Developer.fullWithBody(String firstName, String lastName, String language) : super(firstName, lastName) {
    this.language = language;
  }
  
  Developer.withRedirectionToNotNamed() : this('No', 'Name');
  
  Developer.withRedirectionToNamed(String firstName, String lastName) : this.full(firstName, lastName, 'Dart');
  
  String getFullNameAndLanguage() {
    return '${this.getFullName()} knows $language';
  }
}