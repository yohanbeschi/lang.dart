/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  Person personOK = new Person('Foo', 'Bar');
  assert('Foo Bar' == personOK.getFullName());
   
  Person personKO1 = new Person('Foo', null);
  assert(Person.ANONYMOUS == personKO1.getFullName());
  
  Person personKO2 = new Person('', 'Bar');
  assert(Person.ANONYMOUS == personKO2.getFullName());
  
  Person personKO3 = new Person(null, null);
  assert(Person.ANONYMOUS == personKO3.getFullName());
}

class Person {
  static String ANONYMOUS = 'Anonymous';
  bool isValidName = true;
  
  String firstName;
  String lastName;

  Person(String this.firstName, String this.lastName) {
    if (isBlank(this.firstName) || isBlank(this.lastName)) {
      isValidName = false;
    }
  }
  
  String getFullName() {
    if (this.isValidName) {
      return '$firstName $lastName';
    } else { 
      return ANONYMOUS; 
    }
  }
  
  static bool isEmpty(String s) {
    return s == null;
  }
  
  static bool isBlank(String s) {
    return isEmpty(s) || s.length == 0;
  }
}