/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  // Define a list of anynymous functions
  print('---- Initializing functions');
  Function sayHello = () {
    print('Hello');
  };
  
  Function sayHelloWithName = (String name) {
    print('Hello $name');
  };
  
  Function square = (int i) {
    return  i * i;
  };
  
  print('---- Calling each function');
  sayHello();
  sayHelloWithName('Foo');
  int squaredNumber = square(3);
  assert(squaredNumber == 9);
}
