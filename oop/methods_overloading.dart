/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {

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

  /*
   * String getFullName() {
   *   return '$firstName $lastName knows $language';
   * }
   */
  String getFullName() {
    return '${super.getFullName()} knows $language';
  }
}