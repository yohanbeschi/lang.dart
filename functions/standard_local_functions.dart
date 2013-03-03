/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  // Local function
  square(int i) {
    return  i * i;
  }

  // Function call
  int squaredNum = square(2);
  assert(squaredNum == 4);
}
