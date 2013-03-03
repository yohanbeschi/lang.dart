/// Author: Yohan Beschi

/**
 * Entry Point 
 */
void main() {
  double a = 10.0;
  assert(a is double); 
  assert(a == 10);
  
  a += 5; // a = a + 5
  assert(a == 15);
  
  a -= 5; // a = a - 5
  assert(a == 10);
  
  a *= 2; // a = a * 2
  assert(a == 20);
  
  a /= 2; // a = a / 2
  assert(a == 10);
}
