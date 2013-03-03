/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  //
  assert(power(2) == 4);
  assert(power(2, exponent:3) == 8);
}

int power(int number, {int exponent: 2}) {
  int result = 1;

  for(int i = exponent; i > 0; i--) {
    result *= number;
  }
  
  return result;
}