/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  num sum = multiAdder(1)(2)(3);
  assert(6 == sum);
}

Function multiAdder(num one) 
  => (num two) 
    => (num three) 
      => one + two + three;
