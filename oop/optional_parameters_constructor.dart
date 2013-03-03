/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  // Standard constructor
  Person person = new Person('1', '2');
  assert('1 2' == person.getFullName());
  
  // Optional positional parameters
  Person withOptPositional1 = new Person.withOptPositional('3');
  assert('3 0' == withOptPositional1.getFullName());
  
  Person withOptPositional2 = new Person.withOptPositional('5', '6');
  assert('5 6' == withOptPositional2.getFullName());
  
  // Optional positional parameters with sugar
  Person withOptPositionalSugar1 = new Person.withOptPositionalSugar('7');
  assert('7 null' == withOptPositionalSugar1.getFullName());
  
  Person withOptPositionalSugar2 = new Person.withOptPositionalSugar('8', '9');
  assert('8 9' == withOptPositionalSugar2.getFullName());
  
  // Optional named parameters 
  Person withOptNamed1 = new Person.withOptNamed('10');
  assert('10 null' == withOptNamed1.getFullName());
  
  Person withOptNamed2 = new Person.withOptNamed('11', lastName : '12');
  assert('11 12' == withOptNamed2.getFullName());
  
  // Optional named parameters with sugar
  Person withOptNamedSugar1 = new Person.withOptNamedSugar('13');
  assert('13 0' == withOptNamedSugar1.getFullName());
  
  Person withOptNamedSugar2 = new Person.withOptNamedSugar('14', lastName : '15');
  assert('14 15' == withOptNamedSugar2.getFullName());
}

class Person {
  String firstName;
  String lastName;

  Person(this.firstName, String this.lastName);
  
  Person.withOptPositional(this.firstName, [String lastName = '0']) {
    this.lastName = lastName;
  }
  
  Person.withOptPositionalSugar(this.firstName, [this.lastName]);
  
  Person.withOptNamed(this.firstName, {String lastName}) {
    this.lastName = lastName;
  }
  
  Person.withOptNamedSugar(this.firstName, {this.lastName : '0'});
  
  String getFullName() {
    return '$firstName $lastName';
  }
}