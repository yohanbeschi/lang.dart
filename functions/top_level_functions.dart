/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  sayHello();
  
  sayHelloWithName('Foo');

  int squaredNum = square(2);
  assert(squaredNum == 4);
}

/**
 * Print 'Hello'
 */
void sayHello() {
  print('Hello');
}

/**
 * Print 'Hello $name'
 */
void sayHelloWithName(String name) {
  print('Hello $name');
}

/**
 * Return the square number of the parameter.
 */
int square(int i) {
  return  i * i;
}
